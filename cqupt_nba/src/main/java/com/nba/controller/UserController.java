package com.nba.controller;

import com.nba.domain.User;
import com.nba.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * 用户web层
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/nba")
    public String findAll(HttpServletRequest req){
        //获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String status=req.getParameter("status");
        String sex = req.getParameter("sex");
        String email = req.getParameter("email");
        String team = req.getParameter("team");
        String player = req.getParameter("player");
        if (userService.existUsername(username)){
            return "error";
        }
        userService.registUser(new User(null,username,password,status,sex,email,team,player));
        return "login";
    }
    @RequestMapping("/login2")
    public String login2(HttpServletRequest req){
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User login = userService.login(new User(null, username, password, null, null, null, null, null));
        if (login==null){
            System.out.println("用户名错误或密码错误！");
            return "error";
        }else {
            return "NBAwebCenter2";
        }
    }
    @RequestMapping("/login")
    public String find1(){
        return "login";
    }
    @RequestMapping("/regist")
    public String find2(){
        return "regist";
    }
    @RequestMapping("/update")
    public String find3(){
        return "update";
    }
}
