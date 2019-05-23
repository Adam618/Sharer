package com.sharer.test;


import com.alibaba.fastjson.JSON;
import com.sharer.dao.FanDao;
import com.sharer.entity.Share;
import com.sharer.entity.User;
import com.sharer.service.FanService;
import com.sharer.service.ShareService;
import com.sharer.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ts")
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int Uid = Integer.parseInt(request.getParameter("Uid")) ;
    int start = Integer.parseInt(request.getParameter("start"));
       List<Share> shareList =  ShareService.getShareByUid(Uid,start);
        String json = JSON.toJSON(shareList).toString();



    }


}
