package com.sharer.servlet;

import com.sharer.service.FanService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/IFS")
public class IsFanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp){
        int fid = Integer.parseInt(req.getParameter("Fid"));
        int sid = Integer.parseInt(req.getParameter("Sid"));
        boolean flag = FanService.isFan(fid,sid);
        try {
            resp.getWriter().write(""+flag);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
