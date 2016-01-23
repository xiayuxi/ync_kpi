package com.ync365.oa.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "department")
public class Department extends IdEntity{
    
    /**
     * 名称
     */
    private String name;
    
    /**
     * 	
     */
    private String mt;
    
    /**
     *创建时间
     */
    private Date createTime;
    
    /***
     * 部门类型  1、产品 2、开发 3 ued 4 测试
     */
    
    private Integer type;
    
    /**
     * 部门下所属的员工
     * @return
     */
    private List<Employe> es =new  ArrayList<Employe>();
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
    
    @OneToMany(targetEntity=Employe.class,mappedBy = "departmentId",cascade =CascadeType.ALL)
    public List<Employe> getEs() {
		return es;
	}

	public void setEs(List<Employe> es) {
		this.es = es;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	} 
	
}
