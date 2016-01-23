package com.ync365.oa.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "pe_controller")
public class PeController extends IdEntity {
    private String peDateDepartment;
    private String state;
    private Date createTime;
    private Date updateTime;
    private Long departmentId;

    public String getPeDateDepartment() {
        return peDateDepartment;
    }

    public void setPeDateDepartment(String peDateDepartment) {
        this.peDateDepartment = peDateDepartment;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Column(insertable = true, updatable = false)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Long getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }
}
