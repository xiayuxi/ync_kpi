package com.ync365.oa.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;


/**
 * 专业性--绩效的实体类
 * @author lyh
 *
 */
@Entity
@Table(name = "specialty")
public class SpecialtyJX extends IdEntity{
	private Long departmentId;
	private String departmentName;
	private Long specialtyId;
	private String specialtyName;
	private Double score;	
	private Double totalScore;//总分
	private Long evaluateId;
	private String evaluateName;
	private String mt;//部门负责人
	private Long beEvaluatedId;//被评价人id
	private String beEvaluatedName;//被评价人姓名
	private String comment;//评语
	private Date createTime;
	private Date evaluateTime;//评价时间
	private Date updateTime;//修改时间
	
	//某个员工的所有专业性
	private List<Specialty> specialtyList = new ArrayList<Specialty>();	
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
	public Long getSpecialtyId() {
		return specialtyId;
	}
	public void setSpecialtyId(Long specialtyId) {
		this.specialtyId = specialtyId;
	}
	public String getSpecialtyName() {
		return specialtyName;
	}
	public void setSpecialtyName(String specialtyName) {
		this.specialtyName = specialtyName;
	}		
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	public Long getEvaluateId() {
		return evaluateId;
	}
	public void setEvaluateId(Long evaluateId) {
		this.evaluateId = evaluateId;
	}
	public String getEvaluateName() {
		return evaluateName;
	}
	public void setEvaluateName(String evaluateName) {
		this.evaluateName = evaluateName;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public Date getEvaluateTime() {
		return evaluateTime;
	}	
	public void setEvaluateTime(Date evaluateTime) {
		this.evaluateTime = evaluateTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}	
	public String getMt() {
		return mt;
	}
	public void setMt(String mt) {
		this.mt = mt;
	}
	@Transient//加此注解是为了不让这个属性与数据表字段做映射	
	public Double getTotalScore() {
		return totalScore;
	}
	@Transient
	public void setTotalScore(Double totalScore) {
		this.totalScore = totalScore;
	}
	@Transient	
	public List<Specialty> getSpecialtyList() {
		return specialtyList;
	}
	@Transient
	public void setSpecialtyList(List<Specialty> specialtyList) {
		this.specialtyList = specialtyList;
	}
	
}
