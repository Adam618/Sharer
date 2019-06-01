package com.sharer.servlet;

import com.sharer.entity.Keep;
import com.sharer.service.KeepService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/uks")
public class updateKeepServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset = utf-8");
//        User user = (User) request.getSession().getAttribute("user");
        int flag = Integer.parseInt(request.getParameter("flag"));
        int Ksid = Integer.parseInt(request.getParameter("Ksid"));
        int Kuid = Integer.parseInt(request.getParameter("Kuid"));  // 从页面获取会话然后传过来
        if (flag == 1) {
            Keep keep = new Keep(Kuid, Ksid);
            boolean insertStatus = KeepService.insertKeep(keep);
            response.getWriter().write(""+insertStatus);
        } else {
            boolean deleteStatus = KeepService.deleteKeep(Kuid,Ksid);
            response.getWriter().write(""+deleteStatus);
        }

    }
}
