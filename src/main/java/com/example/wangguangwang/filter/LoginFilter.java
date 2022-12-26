package com.example.wangguangwang.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter", urlPatterns = "/*")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        String URI = httpServletRequest.getRequestURI();

        if (URI.contains("/index.jsp") || URI.contains("indexServlet") || URI.contains("/add.jsp") || URI.contains("addServlet")){
            chain.doFilter(request, response);
        }

        else{
            Object obj = httpServletRequest.getSession().getAttribute("user");

            if(obj != null){
                chain.doFilter(request, response);
            }

            else {
                request.setAttribute("msg", "抱歉，您还未登录！");
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
        }
    }
}
