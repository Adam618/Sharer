package com.sharer.servlet;

import com.sharer.entity.User;
import com.sharer.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/uls")
public class userLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        String Uname = request.getParameter("Uname");
        String Upwd = request.getParameter("Upwd");
        String result ="1";
        System.out.println(result);

        User user = UserService.searchUserByName(Uname);
            if (user==null){ // 代表没查询到用户
                result = "false";
            }else {
                if (Upwd.equals(user.getUpwd())){
                    result = "ture";
                }else{
                    result = "false";
                }
        }



        response.getWriter().write(result);

    }


}
