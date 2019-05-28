package com.sharer.entity;

public class Share {
    private int Sid;
    private int Suid;
    private String Stext;
    private String Simg;
    private String Stime;
    private int Svisible;

    public String getStime() {
        return Stime;
    }

    public void setStime(String stime) {
        Stime = stime;
    }

    public  Share(){};
    public Share(int Sid,int Suid,String Stext,String Simg,String Stime,int Svisible){
        this.Sid = Sid;
        this.Suid = Suid;
        this.Stext = Stext;
        this.Simg = Simg;
        this.Stime = Stime;
        this.Svisible = Svisible;
    }
    public Share(int Suid,String Stext,String Simg,String Stime,int Svisible){

        this.Suid = Suid;
        this.Stext = Stext;
        this.Simg = Simg;
        this.Stime = Stime;
        this.Svisible = Svisible;
    }
    public int getSid() {
        return Sid;
    }

    public void setSid(int sid) {
        Sid = sid;
    }

    public int getSuid() {
        return Suid;
    }

    public void setSuid(int suid) {
        Suid = suid;
    }

    public String getStext() {
        return Stext;
    }

    public void setStext(String stext) {
        Stext = stext;
    }

    public String getSimg() {
        return Simg;
    }

    public void setSimg(String simg) {
        Simg = simg;
    }



    public int getSvisible() {
        return Svisible;
    }

    public void setSvisible(int svisible) {
        Svisible = svisible;
    }


}
