package com.example.wangguangwang.servlet;

import com.example.wangguangwang.data.UserEntity;
import com.example.wangguangwang.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "indexServlet", value = "/indexServlet")
public class IndexServlet extends HttpServlet {
    private UserServiceImpl userServiceImpl = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String userName = request.getParameter("username");
        String password = request.getParameter("password");

        try{
            if(Objects.equals(userName, "")) throw new Exception("用户名不能为空");
            if(Objects.equals(password, "")) throw new Exception("密码不能为空");
        } catch (Exception e) {
            request.setAttribute("msg",e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }

        System.out.println("提交的用户名是："+userName);
        System.out.println("提交的密码是"+password);

        UserEntity user = userServiceImpl.login(userName, password);

        if(user != null){
            HttpSession session = request.getSession();
            session.setAttribute("user",user);

            response.sendRedirect("success.jsp");
        }
        else{
            response.sendRedirect("fail.jsp");
        }
    }

    public void destroy() {
    }
}
