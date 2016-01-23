package com.ync365.oa.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "project_change")
public class ProjectChange extends IdEntity{

    /**
     * 更改之前
     */
    private String changeBefore;
    
    /**
     * 更改之后
     */
    private String changeAfter;
    
    /**
     * 时间
     */
    private Date createTime;
    
    /**
     * 操作员姓名
     */
    private String optName;
    
    /**
     * 相关的项目id
     */
    private Integer projectId;
    
    /**
     * 相关对应项目人员id
     */
    private Integer efficiencyId;
    
    /**
     * 相关人员id
     */
    private Integer employeId;

    public String getChangeBefore() {
        return changeBefore;
    }

    public void setChangeBefore(String changeBefore) {
        this.changeBefore = changeBefore;
    }

    public String getChangeAfter() {
        return changeAfter;
    }

    public void setChangeAfter(String changeAfter) {
        this.changeAfter = changeAfter;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getOptName() {
        return optName;
    }

    public void setOptName(String optName) {
        this.optName = optName;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getEfficiencyId() {
        return efficiencyId;
    }

    public void setEfficiencyId(Integer efficiencyId) {
        this.efficiencyId = efficiencyId;
    }

    public Integer getEmployeId() {
        return employeId;
    }

    public void setEmployeId(Integer employeId) {
        this.employeId = employeId;
    }
    
    

}
