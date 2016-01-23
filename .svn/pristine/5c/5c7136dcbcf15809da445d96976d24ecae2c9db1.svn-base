/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.ync365.oa.web.account;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * LoginController负责打开登录页面(GET请求)和登录出错页面(POST请求)，
 * 
 * 真正登录的POST请求由Filter完成,
 * 
 * @author calvin
 */
@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @RequestMapping(method = RequestMethod.GET)
    public String login() {
        return "account/login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String fail(@RequestParam(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM) String userName,
            HttpServletRequest request, Model model) {
        model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, userName);
        return "account/login";
    }

    @RequestMapping(value = "success", method = RequestMethod.GET)
    public String success() {
        Subject s = SecurityUtils.getSubject();
        if (s.isAuthenticated()) {
            if (s.hasRole("hr")) {
                return "redirect:/homepage";
            } else {
                return "redirect:/home/myhome";
            }
        } else {
            return "redirect:/login";
        }

    }
    @RequestMapping(value = "dispatch", method = RequestMethod.GET)
    public String dispatch() {
        Subject s = SecurityUtils.getSubject();
        if (s.isAuthenticated()) {
            if (s.hasRole("hr")) {
                return "redirect:/homepage";
            } else {
                return "redirect:/home/index";
            }
        } else {
            return "redirect:/login";
        }

    }
}
