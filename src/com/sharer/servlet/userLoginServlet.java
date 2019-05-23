package com.sharer.servlet;

import com.sharer.entity.User;
import com.sharer.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/uls")
public class userLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        String Uname = request.getParameter("Uname");
        String Upwd = request.getParameter("Upwd");
        String result = " ";


        User user = UserService.searchUserByName(Uname);
//        System.out.println(user.getUpwd());
        if (null == user) { // 代表没查询到用户
            result = "false";
        } else {
            if (Upwd.equals(user.getUpwd())) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                result = "ture";

            } else {
                result = "false";
            }
        }


        response.getWriter().write(result);

    }


}
