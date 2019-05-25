package com.sharer.filter;
import javax.servlet.*;
import java.io.IOException;


public class encodingFilter  implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8"); //修改请求编码

        filterChain.doFilter(servletRequest, servletResponse);//相当于放行的意思
    }

    @Override
    public void destroy() {

    }
}
