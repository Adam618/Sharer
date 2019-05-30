package com.sharer.servlet;

import com.sharer.entity.Admin;
import com.sharer.entity.User;
import com.sharer.service.AdminService;
import com.sharer.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/als")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Aname = request.getParameter("Aname");
        String Apwd = request.getParameter("Apwd");
        Admin admin = AdminService.searchAdminByName(Aname);
        String result = " ";
        if (admin == null) {
            result = "false";
        } else {
            if (admin.getApwd().equals(Apwd) ) {
                result = "ture";
            } else {
                result = "false";
            }
        }
        response.getWriter().write(result);
    }
    }
