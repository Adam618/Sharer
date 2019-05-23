package com.sharer.servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.mysql.cj.xdevapi.JsonArray;
import com.sharer.entity.Share;
import com.sharer.service.ShareService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/sss")
public class showShareServlet extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Uid = Integer.parseInt(request.getParameter("Uid")) ;
        int start = Integer.parseInt(request.getParameter("start"));
        List<Share> shareList =  ShareService.getShareByUid(Uid,start);

        JSONArray shareArray= JSONArray.parseArray(JSON.toJSONString(shareList)); //
        response.setContentType("text/html;charset=utf-8");

        response.getWriter().println(shareArray); // 将json数组返回前台


    }
}
