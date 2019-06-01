package com.sharer.service;

import com.sharer.dao.LikesDao;

public class LikesService {
    // 添加点赞
    public static boolean insertLikes(int Luid,int Lsid){
        return  LikesDao.insertLikes(Luid,Lsid);
    }

    // 取消点赞
    public static boolean deleteLikes(int Luid,int Lsid){
        return  LikesDao.insertLikes(Luid,Lsid);
    }

    // 查看当前动态赞数
    public static int getLikesCount(int Lsid){
        return LikesDao.getLikesCount(Lsid);
    }

    // 判断初始点赞状态
    public static boolean isLiked(int Luid,int Lsid){ return  LikesDao.isLiked(Luid, Lsid);}
}
