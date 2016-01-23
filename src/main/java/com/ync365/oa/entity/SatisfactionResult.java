package com.ync365.oa.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "satisfaction_result")
public class SatisfactionResult extends IdEntity {
	
	private Long beEvaluatedDepartmentId;

	private String beEvaluatedDepartmentName;

	private Long beEvaluatedId;

	private String beEvaluatedName;

	private Date createTime;

	private Long projectNum;
	
	private Double score;

	private Date evaluatedTime;

	public Long getProjectNum() {
		return projectNum;
	}

	public void setProjectNum(Long projectNum) {
		this.projectNum = projectNum;
	}

	public Long getBeEvaluatedDepartmentId() {
		return beEvaluatedDepartmentId;
	}

	public void setBeEvaluatedDepartmentId(Long beEvaluatedDepartmentId) {
		this.beEvaluatedDepartmentId = beEvaluatedDepartmentId;
	}

	public String getBeEvaluatedDepartmentName() {
		return beEvaluatedDepartmentName;
	}

	public void setBeEvaluatedDepartmentName(String beEvaluatedDepartmentName) {
		this.beEvaluatedDepartmentName = beEvaluatedDepartmentName;
	}

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

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Date getEvaluatedTime() {
		return evaluatedTime;
	}

	public void setEvaluatedTime(Date evaluatedTime) {
		this.evaluatedTime = evaluatedTime;
	}
	
	
}
