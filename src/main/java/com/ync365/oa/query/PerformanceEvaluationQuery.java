package com.ync365.oa.query;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PerformanceEvaluationQuery {
    private Long id;
    private String beEvaluatedName;
    private String departmentName;
    private Double efficiencyScore;
    private Double specialtyScore;
    private Double leaderAssessmentScore;
    private Double satisfactionScore;
    private Double totalScore;
    private String totalGrade;
    @DateTimeFormat(pattern = "yyyy-MM")
    private Date createTime;
    private Integer pageIndex;
    private Integer pageSize;
    private String sort;

    public String getBeEvaluatedName() {
        return beEvaluatedName;
    }

    public void setBeEvaluatedName(String beEvaluatedName) {
        this.beEvaluatedName = beEvaluatedName;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getTotalGrade() {
        return totalGrade;
    }

    public void setTotalGrade(String totalGrade) {
        this.totalGrade = totalGrade;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(Integer pageIndex) {
        this.pageIndex = pageIndex;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
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

}
