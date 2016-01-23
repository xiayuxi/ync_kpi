package com.ync365.oa.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.domain.Specification;

import com.ync365.oa.entity.Department;
import com.ync365.oa.entity.Employe;
import com.ync365.oa.query.DepartmentQuery;
import com.ync365.oa.service.department.DepartmentService;

public class DepartmentDaoTest extends BaseTest{
	
	@Autowired
	DepartmentDao departmentDao;
	
	@Autowired
	EmployeDao employeDao;
	
	@Autowired
	DepartmentService departmentService;
	
	@Test
	public void test(){
		/*Department d=departmentDao.findOne(2l);
		System.out.println("name>>>>>>"+d.getName());
		
		for(Employe e:d.getEs()){
			System.out.println("e-name>>>>>"+e.getName());
		}*/
		//List<Department> ds=departmentDao.findAll();
		final DepartmentQuery dq=new DepartmentQuery();
		/*Employe e=new Employe();
		e.setName("王");
		dq.setE(e);*/
		
		List<Department> ds=departmentService.find(dq);
		
		for(Department d:ds){
			System.out.println("id>>>>>>"+d.getId());
		}
		/*
		List<Department> ds1=new ArrayList<Department>();
		for(Department d:ds){
			for(Employe e:d.getEs()){
				if(e.getName().equals("王五")){
					ds1.add(d);
				}
			}
		}
		System.out.println("size>>>>>"+ds1.size());
		System.out.println("id>>>"+ds1.get(0).getId());
		*/
	}
	
	/*@Test
	public void findOne(){
		System.out.println("1234");
		final Department d=departmentDao.findOne(2l);

		Specification<Employe> sp=new Specification<Employe>() {

			@Override
			public Predicate toPredicate(Root<Employe> root,
					CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub
				Predicate p1=cb.equal(root.get("departmentId").as(Long.class), d.getId());
				query.where(p1);
				return query.getRestriction();
			}
		};
		
		List<Employe> e=employeDao.findAll(sp);
		System.out.println(">>>"+e.get(0).getName());
	}*/
}
