package com.example.wangguangwang.servlet;

import com.example.wangguangwang.service.CorrectServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "markServlet", value = "/markServlet")
public class MarkServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");



        Map<String, String[]> ParameterMap = request.getParameterMap();

        Map<String, String[]> map = new HashMap(ParameterMap);

        CorrectServiceImpl correctService  = new CorrectServiceImpl();

        request.setAttribute("detail", correctService.correct(map));
        request.getRequestDispatcher("result.jsp").forward(request, response);


    }

}