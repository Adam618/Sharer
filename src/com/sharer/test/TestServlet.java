package com.sharer.test;


import com.sharer.dao.FanDao;
import com.sharer.service.FanService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ts")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int item = Integer.parseInt(req.getParameter("Uid"));
        List list = FanService.getFan(item);
        System.out.println(list.size());
        req.setAttribute("userList",list);
        req.getRequestDispatcher("userInfo.jsp").forward(req,resp);
    }
}
