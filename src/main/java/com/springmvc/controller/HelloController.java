package com.springmvc.controller;

import com.springmvc.domain.Account;
import com.springmvc.domain.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/helloController")
@SessionAttributes(value = {"aaa"})
public class HelloController {
    //@ModelAttribute注解作用在于可以让此方法优先运行
    @ModelAttribute
    //@RequestMapping(path = "/hello")
    public String sayHello() {
        System.out.println("Hello!");
        return "success";
    }

    @RequestMapping("/addParma")
    public String addParma(String username, String password) {
        System.out.println("请求参数方法");
        System.out.println(username);
        System.out.println(password);
        return "success";
    }

    @RequestMapping("/saveUser")
    public String saveUser(Account account) {
        System.out.println("保存账户");
        System.out.println(account);
        return "success";
    }

    @RequestMapping("/testCookieValue")
    public String testCookieValue(@CookieValue("JSESSIONID") String cookieValue) {
        System.out.println(cookieValue);
        return "success";
    }

    /**
     * 等效于SessionAttributes注解(只能注解在类)的作用
     *
     * @param model
     * @return
     */
    @RequestMapping("/testSessionAttribute")
    public String testSessionAttribute(Model model) {
        //底层会存储到request域对象中
        model.addAttribute("aaa", "bbb");
        return "success";
    }

    @RequestMapping("/getSessionAttribute")
    public String getSessionAttribute(ModelMap modelMap){
        String aaa = (String) modelMap.get("aaa");
        System.out.println(aaa);
        return "success";
    }

    /**
     * 清楚Session域的对象
     * @param sessionStatus
     * @return
     */
    @RequestMapping("/deleteSessionAttribute")
    public String deleteSessionAttribute(SessionStatus sessionStatus){
        sessionStatus.setComplete();
        return "success";
    }
    @RequestMapping("/testString")
    public String testString(Model model){
        //模拟从数据库中查询user对象
        User user = new User();
        user.setUsername("无敌");
        user.setPassword("123456");
        user.setAge(19);
        model.addAttribute("user",user);
        return "success";
    }

    /**
     * 请求转发一次请求，不用编写项目的名称
     * 重定向两次请求,不能请求WEB-INF文件下的界面
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/testVoid")
    public void testVoid(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //请求转发的编写
        //request.getRequestDispatcher("/WEB-INF/pages/success.jsp").forward(request,response);
        //重定向
        //response.sendRedirect(request.getContextPath()+"/repsonse.jsp");

        //处理中文显示乱码
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //直接进行响应
        response.getWriter().print("你好");
    }

    /**
     * 传统上传文件
     * @return
     */
    @RequestMapping("/fileUpload1")
    public String fileUpload1(HttpServletRequest request) throws Exception {
        //使用fileupload组件完成文件上传
        //上传的位置
        String realPath = request.getSession().getServletContext().getRealPath("/uploads/");
        //判断该路径是否存在
        File file = new File(realPath);
        if (!file.exists()){
            //创建该文件夹
            file.mkdirs();
        }
        //解析request对象，获取上传文件项
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(factory);
        //解析request
        List<FileItem> list = fileUpload.parseRequest(request);
        for (FileItem item:list){
            //进行判断,当前对象是否为上传文件项
            if (item.isFormField()){
                //说明普通表单项数据
            }else {
                //获取上传文件的名称
                String name = item.getName();
                //把文件名设置唯一值
                String uuId = UUID.randomUUID().toString().replace("-", " ");
                name=uuId+"_"+name;
                //完成上传
                item.write(new File(realPath,name));
                //删除临时文件
                item.delete();
            }

        }
        return "success";
    }
    /**
     * SpringMvc上传文件
     * @return
     */
    @RequestMapping("/fileUpload2")
    public String fileUpload2(HttpServletRequest request, MultipartFile upload) throws Exception {

        //上传的位置
        String realPath = request.getSession().getServletContext().getRealPath("/uploads/");
        //判断该路径是否存在
        File file = new File(realPath);
        if (!file.exists()){
            //创建该文件夹
            file.mkdirs();
        }
        //获取上传文件的名称
        String name = upload.getOriginalFilename();
        //把文件名设置唯一值
        String uuId = UUID.randomUUID().toString().replace("-", " ");
        name=uuId+"_"+name;
        //完成上传
        upload.transferTo(new File(realPath,name));
        return "success";
    }
}
