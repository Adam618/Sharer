package com.sharer.entity;

public class Admin {

    private  int Aid;
    private String Aname;
    private String Agender;
    private String Aemail;
    private String Aphone;
    private String Abirth;
    private String Aimg;
    private String Apwd;

    public Admin(){}

    public Admin(String Aname,String Apwd){
        this.Aname = Aname;
        this.Apwd = Apwd;
    }

    public int getAid() {
        return Aid;
    }

    public void setAid(int aid) {
        Aid = aid;
    }

    public String getAname() {
        return Aname;
    }

    public void setAname(String aname) {
        Aname = aname;
    }

    public String getAgender() {
        return Agender;
    }

    public void setAgender(String agender) {
        Agender = agender;
    }

    public String getAemail() {
        return Aemail;
    }

    public void setAemail(String aemail) {
        Aemail = aemail;
    }

    public String getAphone() {
        return Aphone;
    }

    public void setAphone(String aphone) {
        Aphone = aphone;
    }

    public String getAbirth() {
        return Abirth;
    }

    public void setAbirth(String abirth) {
        Abirth = abirth;
    }

    public String getAimg() {
        return Aimg;
    }

    public void setAimg(String aimg) {
        Aimg = aimg;
    }

    public String getApwd() {
        return Apwd;
    }

    public void setApwd(String apwd) {
        Apwd = apwd;
    }
}
