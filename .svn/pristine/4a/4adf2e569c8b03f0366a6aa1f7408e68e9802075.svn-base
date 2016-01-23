package com.ync365.oa.repository;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;

import com.ync365.oa.entity.PerformanceEvaluation;

public class PerformanceEvaluationDaoTest extends BaseTest {
    @Autowired
    private PerformanceEvaluationDao performanceEvaluationDao;

    @Test
    public void test() {
        PerformanceEvaluation entity = new PerformanceEvaluation();
        entity.setBeEvaluatedId(1l);
        entity.setBeEvaluatedName("段朝骞");
       // entity.setCreateTime(Calendar.getInstance().getTime());
        entity.setDepartmentId(1l);
        entity.setDepartmentName("aa");
        entity.setEfficiencyScore(30.33d);
        entity.setLeaderAssessmentScore(10.33d);
        entity.setSatisfactionScore(30d);
        entity.setSpecialtyScore(30d);
        entity.setTotalScore(100d);
        entity.setTotalGrade("s");
        entity.setUpdateTime(Calendar.getInstance().getTime());
        entity.setId(2l);
        entity = performanceEvaluationDao.save(entity);
        System.out.println(entity.getId());
    }

    @Test
    public void testSelect() {
        Specification<PerformanceEvaluation> sp = new Specification<PerformanceEvaluation>() {

            @Override
            public Predicate toPredicate(Root<PerformanceEvaluation> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
                Predicate p1= cb.equal(cb.substring(root.get("createTime").as(String.class), 1, 10), "2015-11-28");
                query.where(p1);
                return query.getRestriction();
            }
        };
        Page<PerformanceEvaluation> list = performanceEvaluationDao.findAll(sp,new PageRequest(0,2,new Sort(Direction.DESC,"createTime")));
        System.out.println("size >>>>> " + list.getSize());
        System.out.println("getNumber >>>>> " + list.getNumber());
        System.out.println("getTotalElements >>>>> " + list.getTotalPages());
        for (PerformanceEvaluation performanceEvaluation : list) {
            System.out.println("id >>>> " + performanceEvaluation.getId());
        }
    }
}
