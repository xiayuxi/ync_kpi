package com.ync365.oa.service.leaderAssessment;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;
import org.springside.modules.persistence.SearchFilter.Operator;

import com.google.common.base.FinalizablePhantomReference;
import com.ync365.commons.utils.StringUtils;
import com.ync365.oa.entity.Department;
import com.ync365.oa.entity.Employe;
import com.ync365.oa.entity.LeaderAssessment;
import com.ync365.oa.entity.Satisfaction;
import com.ync365.oa.repository.DepartmentDao;
import com.ync365.oa.repository.EmployeDao;
import com.ync365.oa.repository.LeaderAssessmentDao;

@Service
@Transactional
public class LeaderAssessmentService {

	@Autowired
	private LeaderAssessmentDao assessmentDao;

	@Autowired
	private DepartmentDao departmentDao;
	@Autowired
	private EmployeDao employeDao;

	public LeaderAssessment selectById(long id) {
		LeaderAssessment assessment = assessmentDao.findOne(id);
		return assessment;
	}

	public void save(LeaderAssessment assessment) {
		assessmentDao.save(assessment);
	}

	public void delete(long id) {
		assessmentDao.delete(id);
	}

	public void update(LeaderAssessment assessment) {
		LeaderAssessment assessmengUpdate = selectById(assessment.getId());
		try {
			PropertyUtils.copyProperties(assessmengUpdate, assessment);
			assessmengUpdate.setEvaluatedTime(new Date());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		assessmentDao.save(assessmengUpdate);
	}

	public List<LeaderAssessment> getList(Map<String, Object> searchParams) {
		Specification<LeaderAssessment> spec = buildSpecificationList(searchParams);
		List<LeaderAssessment> list = assessmentDao.findAll(spec);
		return list;
	}

	public Page<LeaderAssessment> getPage(Map<String, Object> searchParams, int pageNumber, int pageSize,
			String sortType) {
		searchParams.remove("score");
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		Specification<LeaderAssessment> spec = buildSpecification(searchParams);
		Page<LeaderAssessment> page = assessmentDao.findAll(spec, pageRequest);
		return page;
	}
	
	public List<LeaderAssessment> getPageList(Map<String, Object> searchParams) {
		searchParams.remove("score");
		Specification<LeaderAssessment> spec = buildSpecification(searchParams);
		List<LeaderAssessment> leaderAssessments = assessmentDao.findAll(spec);
		return leaderAssessments;
	}
	
	
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.ASC, "id");
		} else if ("title".equals(sortType)) {
			sort = new Sort(Direction.ASC, "title");
		}

		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

	private Specification<LeaderAssessment> buildSpecificationList(final Map<String, Object> searchParams) {
		Specification<LeaderAssessment> sp = new Specification<LeaderAssessment>() {

			@Override
			public Predicate toPredicate(Root<LeaderAssessment> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();

				if (searchParams.get("evaluatedTime") != null) {
					SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
					list.add(cb.equal(cb.substring(root.get("evaluatedTime").as(String.class), 1, 7),
							f.format(searchParams.get("evaluatedTime"))));
				}
				if (searchParams.get("createTime") != null) {
					SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
					list.add(cb.equal(cb.substring(root.get("createTime").as(String.class), 1, 7),
							f.format(searchParams.get("createTime"))));
				}
				if (searchParams.get("departmentId") != null) {
					list.add(cb.equal(root.get("departmentId").as(Long.class),
							searchParams.get("departmentId")));
				}
				Predicate[] ps = new Predicate[list.size()];
				query.where(cb.and(list.toArray(ps)));
				return query.getGroupRestriction();
			}
		};
		return sp;
	}

	private Specification<LeaderAssessment> buildSpecification(Map<String, Object> searchParams) {

		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);

		if (filters.size() > 0) {
			Date gteDate = null;
			Date lteDate = null;
			String gteDateStr = (String) searchParams.get("GTE_evaluatedTime");
			String lteDateStr = (String) searchParams.get("LTE_evaluatedTime");
			try {
				if (StringUtils.isNotBlank(gteDateStr)) {
					gteDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(gteDateStr + " 00:00:00");
					filters.put("GTE_evaluatedTime", new SearchFilter("evaluatedTime", Operator.GTE, gteDate));
				}
				if (StringUtils.isNotBlank(lteDateStr)) {
					lteDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(lteDateStr + " 23:59:59");
					filters.put("LTE_evaluatedTime", new SearchFilter("evaluatedTime", Operator.LTE, lteDate));
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}

		Specification<LeaderAssessment> spec = DynamicSpecifications.bySearchFilter(filters.values(),
				LeaderAssessment.class);
		return spec;
	}

	/**
	 * 定时任务
	 * 
	 * @Title: createLeaderAssessment
	 * @Description:
	 * @author: duan.zhao.qian
	 * @date: 2015年12月9日 上午10:31:06
	 * @version:
	 *
	 *
	 */
	public void createLeaderAssessment() {
		Iterable<Department> listDepart = departmentDao.findAll();
		for (Department department : listDepart) {
			List<Employe> listEmp = employeDao.findByDepartmentId(department.getId());
			for (Employe employe : listEmp) {
				if (employe.getIsMt()==false) {
					LeaderAssessment leaderAssessment = new LeaderAssessment();
					leaderAssessment.setAction1_Score(null);
					leaderAssessment.setAction2_Score(null);
					leaderAssessment.setAction3_Score(null);
					leaderAssessment.setAction4_Score(null);
					leaderAssessment.setAction5_Score(null);
					leaderAssessment.setBeEvaluatedId(employe.getId());
					leaderAssessment.setBeEvaluatedName(employe.getName());
					leaderAssessment.setComment(null);
					leaderAssessment.setCreateTime(Calendar.getInstance().getTime());
					leaderAssessment.setDepartmentId(department.getId().intValue());
					leaderAssessment.setDepartmentName(department.getName());
					leaderAssessment.setMt(department.getMt());
					leaderAssessment.setEvaluatedTime(null);
					assessmentDao.save(leaderAssessment);
				}
			}
		}
	}

	/**
	 * 查询员工上级评价
	 * 
	 * @Title: findByEmployeIdAndDate
	 * @Description:
	 * @author: duan.zhao.qian
	 * @date: 2015年12月9日 上午10:48:28
	 * @version:
	 *
	 * @param id
	 * @param date
	 * @return
	 *
	 */
	public LeaderAssessment findByEmployeIdAndDate(final Long id, final Date date) {
		Specification<LeaderAssessment> sp = new Specification<LeaderAssessment>() {

			@Override
			public Predicate toPredicate(Root<LeaderAssessment> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate p1 = cb.equal(root.get("beEvaluatedId").as(Long.class), id);
				SimpleDateFormat f = new SimpleDateFormat("yyyy-MM");
				Predicate p2 = cb.equal(cb.substring(root.get("createTime").as(String.class), 1, 7), f.format(date));
				return cb.and(p1, p2);
			}
		};
		List<LeaderAssessment> list = assessmentDao.findAll(sp);
		return list != null && list.size() > 0 ? list.get(0) : new LeaderAssessment();
	}
}
