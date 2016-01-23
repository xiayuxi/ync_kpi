package com.ync365.commons.utils;

import org.apache.shiro.SecurityUtils;

import com.ync365.oa.service.account.ShiroDbRealm.ShiroUser;

public class CurrentUser {
	/**
	 * 取出Shiro中的当前用户Id.
	 */
	public static ShiroUser getCurrentUser() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user;
	}
}
