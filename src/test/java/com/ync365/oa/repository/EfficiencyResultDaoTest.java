package com.ync365.oa.repository;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ync365.oa.entity.EfficiencyResult;

public class EfficiencyResultDaoTest extends BaseTest{
	
	@Autowired
	private EfficiencyResultDao efficiencyResultDao;
	
	
	@Test
	public void test(){
		System.out.println("test");
		EfficiencyResult er=efficiencyResultDao.findOne(1l);
		System.out.println("erDeptName>>>>>>>>>"+er.getDepartmentName());
	}
}
