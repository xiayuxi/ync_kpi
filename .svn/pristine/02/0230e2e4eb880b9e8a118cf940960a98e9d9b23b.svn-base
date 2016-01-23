package com.ync365.oa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.ync365.oa.entity.Satisfaction;

public interface SatisfactionDao  extends PagingAndSortingRepository<Satisfaction, Long>, JpaSpecificationExecutor<Satisfaction> {

	Satisfaction findByIdAndEvaluatedId (Long id,Long evaluatedId);
	
	List<Satisfaction> findByProjectIdAndEvaluatedId (Long projectId ,Long evaluatedId);
	
	void deleteByProjectIdAndEvaluatedId(Long projectId,Long EvaluatedId);
	
	void deleteByProjectIdAndBeEvaluatedId(Long projectId,Long beEvaluatedId);
	
	Satisfaction findByBeEvaluatedIdAndEvaluatedIdAndProjectId(Long beEvaluatedId,Long evaluatedId,Long projectId);
}
