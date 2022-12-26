package com.example.wangguangwang;

public class test {
    /*
    package com.example.wangguangwang.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LonginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String URI = request.getRequestURI();

        if (URI.contains("/index.jsp") || URI.contains("indexServlet")){
            filterChain.doFilter(request, servletResponse);
        }

        else{
            Object obj = request.getSession().getAttribute("user");

            if(obj != null){
                filterChain.doFilter(request, servletResponse);
            }

            else {
                request.setAttribute("msg", "抱歉，您还未登录！");
                request.getRequestDispatcher("/index.jsp").forward(request, servletResponse);
            }
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}

     */
}
