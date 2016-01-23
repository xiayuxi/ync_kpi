package com.ync365.oa.bo;

import java.util.List;

public class SatisfactionDetailPage {

	private String beEvaluatedName;
	
	private String beEvaluatedDepartmentName;
	
	private String evaluatedTime;
	
	private String projectNum;
	
	private List <SatisfactionGroupByProject> project ;
	
	private Double totalScore;

	private SatisfactionGroupByProject detail;
	
	public Double getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(Double totalScore) {
		this.totalScore = totalScore;
	}

	public SatisfactionGroupByProject getDetail() {
		return detail;
	}

	public void setDetail(SatisfactionGroupByProject detail) {
		this.detail = detail;
	}

	public List<SatisfactionGroupByProject> getProject() {
		return project;
	}

	public void setProject(List<SatisfactionGroupByProject> project) {
		this.project = project;
	}

	public String getBeEvaluatedName() {
		return beEvaluatedName;
	}

	public void setBeEvaluatedName(String beEvaluatedName) {
		this.beEvaluatedName = beEvaluatedName;
	}

	public String getBeEvaluatedDepartmentName() {
		return beEvaluatedDepartmentName;
	}

	public void setBeEvaluatedDepartmentName(String beEvaluatedDepartmentName) {
		this.beEvaluatedDepartmentName = beEvaluatedDepartmentName;
	}

	public String getEvaluatedTime() {
		return evaluatedTime;
	}

	public void setEvaluatedTime(String evaluatedTime) {
		this.evaluatedTime = evaluatedTime;
	}

	public String getProjectNum() {
		return projectNum;
	}

	public void setProjectNum(String projectNum) {
		this.projectNum = projectNum;
	}
	
	
}
