package com.example.wangguangwang.filter;

import com.example.wangguangwang.data.UserEntity;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "PermissionFilter", urlPatterns = "/IQtest.jsp")
public class PermissionFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        System.out.println("Pression");
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;

        UserEntity user = (UserEntity) httpServletRequest.getSession().getAttribute("user");

        if(user.getStatus().equals("1")){
            chain.doFilter(request, response);
        }
        else{
            request.setAttribute("msg", "抱歉，您没有访问权限！");
            request.getRequestDispatcher("/success.jsp").forward(request, response);
        }

    }
}
