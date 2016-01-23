package com.ync365.oa.entity;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Table;
/**
 * 专业性的实体类
 * @author lyh
 *
 */
@Entity
@Table(name = "specialty_manager")
public class Specialty extends IdEntity{
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
