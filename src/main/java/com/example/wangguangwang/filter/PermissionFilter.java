package com.example.wangguangwang.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
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
        chain.doFilter(request, response);
    }
}
