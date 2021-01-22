package com.springmvc.utils;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
    自定义拦截器
 */
public class MyInterceptor1 implements HandlerInterceptor {
    /**
     * 预处理，controller方法执行前
     * @param request
     * @param response
     * @param handler
     * @return true 放行，执行下一个拦截器，若无则执行controller中的方法 false 不放行
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("自定义拦截器执行了！");
        return true;
    }
}
