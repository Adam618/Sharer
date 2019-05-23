package com.sharer.service;

import com.sharer.dao.FanDao;
import com.sharer.dao.ShareDao;
import com.sharer.entity.Share;

import java.util.List;
// 获取当前用户所关注人的动态
public class ShareService {
public static List<Share> getShareByUid(int Uid,int start){
   List<Integer> list =  FanDao.getFuid(Uid); // 根据当前登录用户的Uid去获取当前用户idol们的Fuid
    return ShareDao.searchShareBySuid(list,start);
}


}

