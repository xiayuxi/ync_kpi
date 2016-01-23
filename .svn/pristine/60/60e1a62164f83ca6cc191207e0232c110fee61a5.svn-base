package com.ync365.oa.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "performance_evaluation")
public class PerformanceEvaluation extends IdEntity {
    private Long beEvaluatedId;
    private String beEvaluatedName;
    private Long departmentId;
    private String departmentName;
    private Double efficiencyScore;
    private Double specialtyScore;
    private Double leaderAssessmentScore;
    private Double satisfactionScore;
    private Double totalScore;
    private String totalGrade;
    private Date createTime;
    private Date updateTime;

    public Long getBeEvaluatedId() {
        return beEvaluatedId;
    }

    public void setBeEvaluatedId(Long beEvaluatedId) {
        this.beEvaluatedId = beEvaluatedId;
    }

    public String getBeEvaluatedName() {
        return beEvaluatedName;
    }

    public void setBeEvaluatedName(String beEvaluatedName) {
        this.beEvaluatedName = beEvaluatedName;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public Double getEfficiencyScore() {
        return efficiencyScore;
    }

    public void setEfficiencyScore(Double efficiencyScore) {
        this.efficiencyScore = efficiencyScore;
    }

    public Double getSpecialtyScore() {
        return specialtyScore;
    }

    public void setSpecialtyScore(Double specialtyScore) {
        this.specialtyScore = specialtyScore;
    }

    public Double getLeaderAssessmentScore() {
        return leaderAssessmentScore;
    }

    public void setLeaderAssessmentScore(Double leaderAssessmentScore) {
        this.leaderAssessmentScore = leaderAssessmentScore;
    }

    public Double getSatisfactionScore() {
        return satisfactionScore;
    }

    public void setSatisfactionScore(Double satisfactionScore) {
        this.satisfactionScore = satisfactionScore;
    }

    public Double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Double totalScore) {
        this.totalScore = totalScore;
    }

    public String getTotalGrade() {
        return totalGrade;
    }

    public void setTotalGrade(String totalGrade) {
        this.totalGrade = totalGrade;
    }

    @Column(insertable = true, updatable = false, nullable = false)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Column(nullable = false)
    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}
