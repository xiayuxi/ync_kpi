/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.ync365.oa.service.account;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.failBecauseExceptionWasNotThrown;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;

import org.apache.shiro.codec.Hex;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springside.modules.test.security.shiro.ShiroTestUtils;
import org.springside.modules.utils.Clock.MockClock;

import com.ync365.oa.data.UserData;
import com.ync365.oa.entity.User;
import com.ync365.oa.repository.TaskDao;
import com.ync365.oa.repository.UserDao;
import com.ync365.oa.service.ServiceException;
import com.ync365.oa.service.account.ShiroDbRealm.ShiroUser;

/**
 * AccountService的测试用例, 测试Service层的业务逻辑.
 * 
 * @author calvin
 */
public class AccountServiceTest {

    @InjectMocks
    private AccountService accountService;

    @Mock
    private UserDao mockUserDao;

    @Mock
    private TaskDao mockTaskDao;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
        ShiroTestUtils.mockSubject(new ShiroUser(3L, "foo", "Foo"));
    }

    @Test
    public void registerUser() {
        User user = UserData.randomNewUser();
        Date currentTime = new Date();
        accountService.setClock(new MockClock(currentTime));

        accountService.registerUser(user);

        // 验证user的角色，注册日期和加密后的密码都被自动更新了。
        assertThat(user.getRoles()).isEqualTo("user");
        assertThat(user.getRegisterDate()).isEqualTo(currentTime);
        assertThat(user.getPassword()).isNotNull();
        assertThat(user.getSalt()).isNotNull();
    }

    @Test
    public void updateUser() {
        //		// 如果明文密码不为空，加密密码会被更新.
        //		User user = UserData.randomNewUser();
        //		accountService.updateUser(user);
        //		assertThat(user.getSalt()).isNotNull();
        //
        //		// 如果明文密码为空，加密密码无变化。
        //		User user2 = UserData.randomNewUser();
        //		user2.setPlainPassword(null);
        //		accountService.updateUser(user2);
        //		assertThat(user2.getSalt()).isNull();
        try {
            MessageDigest d = MessageDigest.getInstance("sha1");
            byte[] bs1 = Hex.decode("7efbd59d9741d34f");
            d.update(bs1);
            byte[] bytes = d.digest("admin".getBytes(Charset.forName("utf8")));
            
            for (int i = 1; i < 1024; i++) {
                d.reset();
                bytes = d.digest(bytes);
            }
            StringBuilder sb = new StringBuilder();
            for (byte b : bytes) {
                sb.append(String.format("%x", b));
            }
            //  System.out.println(String.format("%tF %tT", Calendar.getInstance().getTime(),Calendar.getInstance().getTime()));
            System.out.println(sb);

        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void deleteUser() {
        // 正常删除用户.
        accountService.deleteUser(2L);
        Mockito.verify(mockUserDao).delete(2L);

        // 删除超级管理用户抛出异常, userDao没有被执行
        try {
            accountService.deleteUser(1L);
            failBecauseExceptionWasNotThrown(ServiceException.class);
        } catch (ServiceException e) {
            // expected exception
        }
        Mockito.verify(mockUserDao, Mockito.never()).delete(1L);
    }

}
