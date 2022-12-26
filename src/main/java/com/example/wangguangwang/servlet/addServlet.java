package com.example.wangguangwang.servlet;

import com.example.wangguangwang.data.UserEntity;
import com.example.wangguangwang.service.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "addServlet", value = "/addServlet")
public class addServlet extends HttpServlet {
    private UserServiceImpl userServiceImpl = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");

        UserEntity user = userServiceImpl.add(userName, password, name);
        if(user != null){
            HttpSession session = request.getSession();
            session.setAttribute("user",user);

            response.sendRedirect("success.jsp");
        }else {

        }
    }
}
