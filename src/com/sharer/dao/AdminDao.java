package com.sharer.dao;

import com.sharer.entity.Admin;
import com.sharer.entity.User;
import com.sharer.util.DBUtil;

import java.sql.*;

public class AdminDao {


    //通过特定PreparedStatement查询用户信息
    public static Admin searchAdminByPst(PreparedStatement pst) {
        Admin admin = null;
        ResultSet set = null;
        Connection con = null;
        try {
            set = pst.executeQuery();
            if (set.next()) {
                admin = new Admin();
                admin.setAid(set.getInt(1));
                admin.setAname(set.getString(2));
                admin.setAgender(set.getString(3));
                admin.setAemail(set.getString(4));
                admin.setAphone(set.getString(5));
                admin.setAbirth(set.getString(6));
                admin.setAimg(set.getString(7));
                admin.setApwd(set.getString(8));
            }
        } catch (Exception e) {
            System.out.println("【searchUserByPst()】ResultSet 出错");
            e.printStackTrace();
        } finally {
            DBUtil.close(con, pst, set);
        }
        return admin;
    }

    public static Admin searchAdminByName(String Aname) {
        String sql = "select * from Admin where Aname = ?";
        PreparedStatement pst;
        pst = DBUtil.getPst(sql);
        try {
            pst.setString(1, Aname);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("search Admin by Name 出错");
        }
        return searchAdminByPst(pst);
    }


}




