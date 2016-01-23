package com.ync365.oa.query;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.ync365.oa.entity.IdEntity;
/**
 * 专业性查询的实体
 * @author lyh
 *
 */
public class SpecialtyQuery {
	private String name;
	private Long departmentId;
	private String departmentName;
	private String mt;
	private Date createTime;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getMt() {
		return mt;
	}
	public void setMt(String mt) {
		this.mt = mt;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
}
