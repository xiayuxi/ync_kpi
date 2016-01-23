package com.ync365.oa.web.department;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ync365.oa.entity.Department;
import com.ync365.oa.query.DepartmentQuery;
import com.ync365.oa.service.department.DepartmentService;

@Controller
@RequestMapping(value = "/admin/department")
public class DepartmentController {
	
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping(value = "/list")
	public String list(DepartmentQuery dQuery, Model model) {
		List<Department> departmentList = departmentService.find(dQuery);
		model.addAttribute(departmentList);
		model.addAttribute("searchParames", dQuery);
		
		return "department/departmentList";
	}
	
	
	@RequestMapping(value = "/listAjax")
    @ResponseBody
    public List<Department> listAjax() {
        List<Department> departmentList = departmentService.getAll();
        return departmentList;
    }
	
	@RequestMapping(value = "/add")
	public String add(Department department) {
		departmentService.add(department);
		return "redirect:/admin/department/list";
	}
	
	@RequestMapping(value = "/addPage")
	public String addPage() {
		return "department/departmentAdd";
	}
	
	@RequestMapping(value = "/viewPage/{id}")
	public String view(@PathVariable long id, Model model) {
		Department department = departmentService.findOne(id);
		model.addAttribute(department);
		return "department/departmentView";
	}
	
	@RequestMapping(value = "/editPage/{id}")
	public String editPage(@PathVariable long id, Model model) {
		Department department = departmentService.findOne(id);
		model.addAttribute(department);
		return "department/departmentEdit";
	}
	
	@RequestMapping(value = "/edit")
	public String edit(Department department, Model model) {
		departmentService.update(department);
		return "redirect:/admin/department/list";
	}
	
	
	@RequestMapping(value = "/validateName")
	@ResponseBody
	public Boolean validateName(Department department, Model model) {
		List<Department> depList = departmentService.getAll();
		for (Department dep : depList) {
			if (department.getName().equals(dep.getName()) && department.getId() != dep.getId()) {
				return false;
			}
		}
		return true;
	}

	
	@org.springframework.web.bind.annotation.InitBinder
    public void InitBinder(ServletRequestDataBinder bin) {
        bin.registerCustomEditor(Date.class, new CustomDateEditor( new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
    }
}
