package com.sharer.service;

import com.sharer.dao.AdminDao;
import com.sharer.entity.Admin;

public class AdminService {
    public static Admin searchAdminByName(String Admin){
       return AdminDao.searchAdminByName(Admin);
    }
}
