package com.ync365.oa.repository;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ync365.oa.entity.Project;
import com.ync365.oa.query.ProjectQuery;
import com.ync365.oa.service.project.ProjectService;

public class ProjectDaoTest extends BaseTest{
	
	@Autowired
	ProjectDao projectDao;
	
	@Autowired
	ProjectService projectService;
	
	@Test
	public void test(){
		final ProjectQuery d=new ProjectQuery();
		List<Project> list=projectService.find(d);
		for(Project p:list){
			System.out.println("name>>>>."+p.getName());
		}
	}
}
