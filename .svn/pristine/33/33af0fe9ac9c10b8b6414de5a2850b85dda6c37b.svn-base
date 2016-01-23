package com.ync365.oa.service.specialty;

import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.ync365.oa.bo.SpecialtyJXBo;
import com.ync365.oa.bo.SpecialtyScoreBo;
import com.ync365.oa.entity.Department;
import com.ync365.oa.entity.Employe;
import com.ync365.oa.entity.Specialty;
import com.ync365.oa.entity.SpecialtyHistory;
import com.ync365.oa.entity.SpecialtyJX;
import com.ync365.oa.repository.DepartmentDao;
import com.ync365.oa.repository.EmployeDao;
import com.ync365.oa.repository.SpecialtyDao;
import com.ync365.oa.repository.SpecialtyHistoryDao;
import com.ync365.oa.repository.SpecialtyJXDao;

/**
 * 专业性--绩效的业务逻辑类
 * 
 * @author lyh
 *
 */
@Component
@Transactional
public class SpecialtyJXService {
	@Autowired
	private SpecialtyJXDao specialtyJXDao;
	@Autowired
	private SpecialtyDao specialtyDao;
	@Autowired
	private EmployeDao employeDao;
	@Autowired
	private DepartmentDao departMentDao;
	@Autowired
	private SpecialtyHistoryDao specialtyHistoryDao;

	/**
	 * 初始化员工专业性绩效列表(此方法每月1号0：00在定时任务中调用)
	 * 
	 * @param SpecialtyJX
	 */
	public void initSpecialtyJXList() {
		// 得到所有部门的所有专业性
		List<Specialty> specList = (List<Specialty>) specialtyDao.findAll();
		List<Department> depList = (List<Department>)departMentDao.findAll();
		if(specList!=null&&specList.size()>0){
			if(depList!=null&&depList.size()>0){
				for (Specialty specialty : specList) {
					SpecialtyHistory specialtyHistory = new SpecialtyHistory();	
					specialtyHistory.setSpecId(specialty.getId());
					specialtyHistory.setName(specialty.getName());			
					specialtyHistory.setDepartmentId(specialty.getDepartmentId());
					specialtyHistory.setDepartmentName(specialty.getDepartmentName());
					for (Department department : depList) {
						if(specialty.getDepartmentId()==department.getId()){
							specialtyHistory.setMt(specialty.getMt());
						}
					}		
					specialtyHistory.setCreateTime(new Date());			
					//向专业性历史表中插入数据
					specialtyHistoryDao.save(specialtyHistory);
				}
				// 得到所有员工
				List<Employe> employeList = (List<Employe>) employeDao.findAll();
				
				if(employeList!=null&&employeList.size()>0){
					for (Specialty specialty : specList) {
						Department departmentMT = departMentDao.findOne(specialty.getDepartmentId());
						for (Employe employe : employeList) {					
							if(employe.getDepartmentId()!=0&&employe.getDepartmentId()!=-1){//排除管理员和非部门人员
								if(!employe.getIsMt()){//排除mt负责人
									if (employe.getDepartmentId() == specialty.getDepartmentId()) {
										SpecialtyJX specialtyJX = new SpecialtyJX();
										specialtyJX.setDepartmentId(employe.getDepartmentId());
										specialtyJX.setDepartmentName(employe.getDepartmentName());
										specialtyJX.setSpecialtyId(specialty.getId());
										specialtyJX.setSpecialtyName(specialty.getName());
										specialtyJX.setBeEvaluatedId(employe.getId());
										specialtyJX.setBeEvaluatedName(employe.getName());						
										specialtyJX.setCreateTime(new Date());
										if(departmentMT!=null){
											specialtyJX.setMt(departmentMT.getMt());
										}
										//向员工专业性绩效列表中插入数据
										specialtyJXDao.save(specialtyJX);
									}
								}		
							}								
						}
					}
				}		
			}
		}		
	
	}

	/**
	 * 按月份获取某个员工的专业性评价
	 * 
	 * @return
	 */
	public SpecialtyJXBo getSpecialtyJXByEmployeId(final Long beEvaluatedId,final Date createTime) {
		SpecialtyJXBo bo = new SpecialtyJXBo();
		Specification<SpecialtyJX> spec = new Specification<SpecialtyJX>() {
			@Override
			public Predicate toPredicate(Root<SpecialtyJX> root,CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predList = new ArrayList<Predicate>();
				predList.add(cb.equal(root.get("beEvaluatedId"),beEvaluatedId));
				if (createTime != null) {
					SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
					predList.add(cb.equal(cb.substring(root.get("createTime")
							.as(String.class), 1, 7), f.format(createTime)));
				}
				Predicate[] ps = new Predicate[predList.size()];
				query.where(cb.and(predList.toArray(ps)));
				return query.getGroupRestriction();
			}
		};
		List<SpecialtyJX> list = specialtyJXDao.findAll(spec);
		if (list != null && list.size() > 0) {
			Double totalScore = 0d;
			for (SpecialtyJX specialtyJX : list) {
				// 计算某个被评价人的专业性总分
				if (specialtyJX.getScore() != null) {
					totalScore += specialtyJX.getScore();
				}
			}
			SpecialtyJX specialtyJX = list.get(0);
			
			bo.setDepartmentId(specialtyJX.getDepartmentId());			
			bo.setDepartmentName(specialtyJX.getDepartmentName());			
			//Department findOne = departMentDao.findOne(specialtyJX.getDepartmentId());
			bo.setMt(specialtyJX.getMt());
			bo.setTotalScore(totalScore);			
			bo.setBeEvaluatedId(specialtyJX.getBeEvaluatedId());
			bo.setBeEvaluatedName(specialtyJX.getBeEvaluatedName());			
			bo.setEvaluateId(specialtyJX.getEvaluateId());
			bo.setEvaluateName(specialtyJX.getEvaluateName());
			bo.setComment(specialtyJX.getComment());
			bo.setCreateTime(specialtyJX.getCreateTime());
			bo.setEvaluateTime(specialtyJX.getEvaluateTime());
			bo.setUpdateTime(specialtyJX.getUpdateTime());	
			bo.setSpecialtyJXList(list);
		}
		return bo;
	}

	/**
	 * 按月份获取某个MT负责人下的所有员工的专业性评价列表(本月评价上个月的)
	 * 
	 * @return
	 */
	public List<SpecialtyJXBo> getAllSpecialtyJXByEvaluatedId(final Long departmentId, final Date createTime) {		
		List<SpecialtyJXBo> listBo = new ArrayList<SpecialtyJXBo>();
		Specification<SpecialtyJX> spec = new Specification<SpecialtyJX>() {
			@Override
			public Predicate toPredicate(Root<SpecialtyJX> root,CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predList = new ArrayList<Predicate>();
				predList.add(cb.and(cb.equal(root.get("departmentId"),departmentId)));
				if (createTime != null) {
					SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
					predList.add(cb.equal(cb.substring(root.get("createTime")
							.as(String.class), 1, 7), f.format(createTime)));
				}
				Predicate[] ps = new Predicate[predList.size()];
				query.where(cb.and(predList.toArray(ps)));				
				return query.getGroupRestriction();
			}
		};
		List<SpecialtyJX> list = specialtyJXDao.findAll(spec);
		//定义set集合存放员工id
		Set<Long> set = new HashSet<Long>();
		if(list!=null&&list.size()>0){
			for (SpecialtyJX specialtyJX : list) {			
				if(!set.contains(specialtyJX.getBeEvaluatedId())){
					set.add(specialtyJX.getBeEvaluatedId());
				}
			}
			for (Long id : set) {
				SpecialtyJXBo bo = getSpecialtyJXByEmployeId(id, createTime);
				listBo.add(bo);
			}		
		}
		
		return listBo;
	}

	/**
	 * 专业性--绩效评价或修改绩效评价(每月1号至3号可以修改或评价上个月的专业性)
	 */
	public Boolean evaluate(List<SpecialtyJX> specialtyJXlist, int operation) {		
		Boolean flag = null;		
		try {
			if (specialtyJXlist != null && specialtyJXlist.size() > 0) {
				for (SpecialtyJX specialtyJX : specialtyJXlist) {
					SpecialtyJX findOne = specialtyJXDao.findOne(specialtyJX.getId());
					findOne.setEvaluateId(specialtyJX.getEvaluateId());
					findOne.setEvaluateName(specialtyJX.getEvaluateName());
					findOne.setScore(specialtyJX.getScore());
					findOne.setComment(specialtyJX.getComment());
					if (operation == 1) {						
						findOne.setEvaluateTime(new Date());// 评价时间
					}
					if (operation == 2) {
						findOne.setUpdateTime(new Date());// 修改时间
					}
					specialtyJXDao.save(findOne);
					flag = true;
				}
			}
		} catch (Exception e) {
			flag = false;
			e.printStackTrace();
		}			
		return flag;
	}

	/**
	 * 获取某个部门的最新的专业性(此方法已移之专业性历史的service中)
	 * 
	 * @param departmentId
	 * @param createTimeAdd
	 * @return
	 */
	/*public List<Specialty> getSpecialtyListByDepartmentId(final Long departmentId) {

		// 查询该部门所有的专业性
		Specification<Specialty> spec1 = new Specification<Specialty>() {
			@Override
			public Predicate toPredicate(Root<Specialty> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				query.where(cb.and(cb.equal(root.get("departmentId"),
						departmentId)));
				// 按照添加时间降序排列
				query.orderBy(cb.desc(root.get("createTime").as(Date.class)));
				return query.getGroupRestriction();
			}
		};
		List<Specialty> allSpecialtyList = specialtyDao.findAll(spec1);

		// 取出第一条，即该部门最新的专业性
		Specialty specialty = allSpecialtyList.get(0);
		// 专业性添加时间
		final Date createTimeAdd = specialty.getCreateTime();

		Specification<Specialty> spec2 = new Specification<Specialty>() {
			@Override
			public Predicate toPredicate(Root<Specialty> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predList = new ArrayList<Predicate>();
				predList.add(cb.and(cb.equal(root.get("departmentId"),
						departmentId)));
				if (createTimeAdd != null) {
					SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
					predList.add(cb.equal(cb.substring(root.get("createTime")
							.as(String.class), 1, 7), f.format(createTimeAdd)));
				}
				Predicate[] ps = new Predicate[predList.size()];
				query.where(cb.and(predList.toArray(ps)));
				return query.getGroupRestriction();
			}
		};
		List<Specialty> specialtyList = specialtyDao.findAll(spec2);

		return specialtyList;
	}*/

	/**
	 * 获取某个部门下的所有员工
	 * 
	 * @return
	 */
	public List<Employe> getEmployesByDepartmentId(final Long departmentId) {
		Specification<Employe> spec = new Specification<Employe>() {
			@Override
			public Predicate toPredicate(Root<Employe> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.and(cb.equal(root.get("departmentId"), departmentId));
			}
		};
		return employeDao.findAll(spec);
	}
	
	/**
	 * 多条件组合查询员工专业性得分列表
	 * @param bo
	 * @return
	 */
	public List<SpecialtyScoreBo> getSpecialtyJXByMultiple(final SpecialtyScoreBo bo) {
		List<SpecialtyScoreBo> listBo = new ArrayList<SpecialtyScoreBo>();
		Specification<SpecialtyJX> spec=new Specification<SpecialtyJX>() {
			@Override
			public Predicate toPredicate(Root<SpecialtyJX> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predList = new ArrayList<Predicate>();				
				if(StringUtils.isNotBlank(bo.getBeEvaluatedName())){
					predList.add(cb.equal(root.get("beEvaluatedName").as(String.class), bo.getBeEvaluatedName()));
				}
				if(StringUtils.isNotBlank(bo.getMt())){
					predList.add(cb.equal(root.get("mt").as(String.class), bo.getMt()));
				}				  
				if(bo.getDepartmentId()!=null){					
					predList.add(cb.equal(root.get("departmentId").as(Long.class), bo.getDepartmentId()));
				}
				if (bo.getCreateTime()!= null) {
                    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
                    predList.add(cb.equal(cb.substring(root.get("createTime").as(String.class), 1, 7),
                            f.format(bo.getCreateTime())));
                }	
				if (bo.getEvaluateTime()!= null) {
                    SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
                    predList.add(cb.equal(cb.substring(root.get("evaluateTime").as(String.class), 1, 7),
                            f.format(bo.getEvaluateTime())));
                }				
				Predicate[] ps = new Predicate[predList.size()];
                query.where(cb.and(predList.toArray(ps)));                
                return query.getGroupRestriction();
				
			}
		};
		List<SpecialtyJX> jxList = specialtyJXDao.findAll(spec);	
		if(jxList!=null&&jxList.size()>0){
			Map<Long, Date> map = new HashMap<Long, Date>();
			for (SpecialtyJX specialtyJX : jxList) {				
				if(!map.containsKey(specialtyJX.getBeEvaluatedId())){
					map.put(specialtyJX.getBeEvaluatedId(), specialtyJX.getCreateTime());
				}
			}
			for (Map.Entry<Long, Date> entry : map.entrySet()) {
				SpecialtyJXBo jxBo = getSpecialtyJXByEmployeId(entry.getKey(), entry.getValue());
				SpecialtyScoreBo scoreBo = new SpecialtyScoreBo();
				scoreBo.setBeEvaluatedId(jxBo.getBeEvaluatedId());
				scoreBo.setBeEvaluatedName(jxBo.getBeEvaluatedName());
				scoreBo.setDepartmentId(jxBo.getDepartmentId());
				scoreBo.setDepartmentName(jxBo.getDepartmentName());	
				scoreBo.setMt(jxBo.getMt());
				scoreBo.setSpecialtyJXList(jxBo.getSpecialtyJXList());
				scoreBo.setTotalScore(jxBo.getTotalScore());
				scoreBo.setCreateTime(jxBo.getCreateTime());
				scoreBo.setEvaluateTime(jxBo.getEvaluateTime());
				scoreBo.setUpdateTime(jxBo.getUpdateTime());
				scoreBo.setComment(jxBo.getComment());
				listBo.add(scoreBo);
			}		
		}
		
		return listBo;
	}
	/**
	 * 判断当前日期是否允许评分
	 * @return
	 */
	public Boolean isAllowedEvaluate(){    			
		SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
		String format = f.format(new Date());
		String day = format.substring(6, 8);	
		Boolean flag = null;
		switch (day) {
		case "01":
		case "02":
		case "03":
			flag = true;
			break;
		default:
			flag = false;
			break;
		}
    	return flag;
  }
	
	/**
	 * 通过获取标准的网络时间判断当前日期是否允许评分(此方法暂时未使用)
	 * @return
	 * @throws Exception
	 */
	  public Boolean isAllowedToEvaluate() throws Exception{
	    	TimeZone.setDefault(TimeZone.getTimeZone("GMT+8")); // 时区设置  
			URL url = new URL("http://www.bjtime.cn");//取得资源对象
			URLConnection uc = url.openConnection();//生成连接对象  
			uc.connect(); //发出连接  		  
			Date date = new Date(uc.getDate()); //转换为标准时间对象  		
			SimpleDateFormat f = new SimpleDateFormat("yyyyMMdd");
			String format = f.format(date);
			String day = format.substring(6, 8);	
			Boolean flag = null;
			switch (day) {
			case "01":
			case "02":
			case "03":
				flag = true;
				break;
			default:
				flag = false;
				break;
			}
	    	return flag;
	  }
		
	public List<Specialty> getSpecialtyList() {	
		return (List<Specialty>)specialtyDao.findAll();
	}	
}
