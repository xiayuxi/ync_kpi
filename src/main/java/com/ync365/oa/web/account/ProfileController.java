/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.ync365.oa.web.account;

import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync365.oa.entity.Employe;
import com.ync365.oa.entity.User;
import com.ync365.oa.service.account.AccountService;
import com.ync365.oa.service.account.ShiroDbRealm.ShiroUser;
import com.ync365.oa.service.employe.EmployeService;

/**
 * 用户修改自己资料的Controller.
 * 
 * @author calvin
 */
@Controller
@RequestMapping(value = "/profile")
public class ProfileController {

    @Autowired
    private EmployeService employeService;

    @RequestMapping(method = RequestMethod.GET)
    public String updateForm(Model model) {
        Long id = getCurrentUserId();
        model.addAttribute("user", employeService.findOne(id));
        return "account/profile";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String update(@Valid @ModelAttribute("user") Employe user, @RequestParam("oldPassword") String oldPassword,
            Model model) {
        Employe neuser = employeService.findOne(user.getId());
        if (oldPassword.equals(neuser.getPassword())) {
            neuser.setPassword(user.getPassword());
            employeService.update(neuser);
            updateCurrentUserName(user.getName());
            return "redirect:/";
        } else {
            model.addAttribute("user", neuser);
            model.addAttribute("error", "密码错误");
            return "account/profile";
        }
    }


    /**
     * 取出Shiro中的当前用户Id.
     */
    private Long getCurrentUserId() {
        ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
        return user.id;
    }

    /**
     * 更新Shiro中当前用户的用户名.
     */
    private void updateCurrentUserName(String userName) {
        ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
        user.name = userName;
    }
}
