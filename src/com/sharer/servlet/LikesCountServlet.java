package com.sharer.servlet;

import com.sharer.service.LikesService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LikesCountServlet")
public class LikesCountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     int Lsid = Integer.parseInt(request.getParameter("Lsid"));
     int likesCount = LikesService.getLikesCount(Lsid);
     response.getWriter().write(likesCount);
    }


}
