package com.ync365.oa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.ync365.oa.entity.ProjectChange;

public interface ProjectChangeDao extends PagingAndSortingRepository<ProjectChange,Long>, JpaSpecificationExecutor<ProjectChange>{

    List<ProjectChange> findByProjectId(int projectId);

    @Query("select a from ProjectChange a where a.projectId = ?1 and a.efficiencyId = ?2 order by a.createTime desc")
    List<ProjectChange> findByProjectIdAndEfficiencyId(int projectId, int efficiencyId);

}
