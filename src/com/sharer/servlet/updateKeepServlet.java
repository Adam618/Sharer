package com.sharer.servlet;

import com.sharer.entity.Keep;
import com.sharer.entity.User;
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
        User user = (User) request.getSession().getAttribute("user");
        int flag = Integer.parseInt(request.getParameter("flag"));
        int Ksid = Integer.parseInt(request.getParameter("Ksid"));
        int Kuid = user.getUid();
        if (flag == 1) {
            Keep keep = new Keep(Kuid, Ksid);
            boolean insertStatus = KeepService.insertKeep(keep);
        } else {
            boolean deleteStatus = KeepService.deleteKeep(Kuid,Ksid);
        }

    }
}
