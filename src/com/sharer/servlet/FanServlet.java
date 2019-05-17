package com.sharer.servlet;


import com.alibaba.fastjson.JSON;
import com.sharer.entity.User;
import com.sharer.service.FanService;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/FS")
public class FanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp){
        int Uid = Integer.parseInt(req.getParameter("Uid"));
        List<User> list = FanService.getFan(Uid);
        String json = JSON.toJSON(list).toString();
        System.out.println("json:"+json);
        resp.setContentType("text/html;charset=utf-8");
        try {
            resp.getWriter().write(json);  // 传递给ajax

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
