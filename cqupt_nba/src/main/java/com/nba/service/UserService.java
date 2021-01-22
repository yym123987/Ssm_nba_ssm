package com.nba.service;

import com.nba.domain.User;

public interface UserService {
    /**
     * 注册用户业务
     * @param user
     */
    public void registUser(User user);

    /**
     * 登录业务
     * @param user
     * @return 返回null说明登录失败,返回有值登陆成功
     */
    public User login(User user);

    /**
     * 验证用户名是否存在业务
     * @param username
     * @return 返回true用户名已存在，返回false用户名可用
     */
    public boolean existUsername(String username);
}
