package com.nba.dao;

import com.nba.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    /**
     * 注册时根据用户名查询用户信息是否存在
     * @param username
     * @return 如果返回null则说明没有这个用户，反之亦然
     */
    @Select("select id,username,password,sex,email,team,player from cqupt_nba where username=#{username}")
    public User queryUserByUsername(String username);

    /**
     * 保存用户注册信息
     * @param user
     * @return 返回-1表示失败，其他为影响的行数
     */
    @Insert("insert into cqupt_nba(username,password,status,sex,email,team,player) values(#{username},#{password},#{status},#{sex},#{email},#{team},#{player})")
    public int saveUser(User user);

    /**
     * 登录时根据用户名和密码查询用户信息是否存在
     * @param username
     * @param password
     * @return 如果返回null则说明没有这个用户或者用户名或密码错误，反之亦然
     */
    @Select("select id,username,password,status,sex,email,team,player from cqupt_nba where username=#{username} and password=#{password}")
    public User queryUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
