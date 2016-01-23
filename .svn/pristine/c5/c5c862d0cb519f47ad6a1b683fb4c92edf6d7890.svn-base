package com.ync365.oa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.ync365.oa.entity.Project;
import com.ync365.oa.entity.Task;

public interface ProjectDao  extends PagingAndSortingRepository<Project, Long>, JpaSpecificationExecutor<Project>{

    List<Project> findByPmId(int pmId);

}
