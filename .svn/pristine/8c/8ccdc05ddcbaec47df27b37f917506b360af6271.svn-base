package com.ync365.oa.web.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ync365.commons.utils.CurrentUser;
import com.ync365.oa.entity.Project;
import com.ync365.oa.service.account.ShiroDbRealm.ShiroUser;
import com.ync365.oa.service.project.ProjectService;

@Controller
@RequestMapping(value = "/project")
public class ProjectController {

    @Autowired
    private ProjectService projectService;
    
    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    public String findAll(Model model) {
        ShiroUser user = CurrentUser.getCurrentUser();
        List<Project> projectList = projectService.findProjectById(user);
        model.addAttribute("projectList", projectList);
        return "efficiency/list_page";
    }
    
}
