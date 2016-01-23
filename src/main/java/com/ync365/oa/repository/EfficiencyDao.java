package com.ync365.oa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.ync365.oa.entity.Efficiency;
import com.ync365.oa.entity.Task;

public interface EfficiencyDao extends PagingAndSortingRepository<Efficiency, Long>, JpaSpecificationExecutor<Efficiency>  {

    List<Efficiency> findByProjectId(Integer projectId);

    List<Efficiency> findByEmployeId(int intValue);

    List<Efficiency> findByProjectIdAndEmployeId(Integer projectId, Integer employeId);

}
