package com.sharer.entity;

public class Keep {
   private int kis;
   private int kuid;
   private int ksid;

    public int getKis() {
        return kis;
    }

    public void setKis(int kis) {
        this.kis = kis;
    }

    public int getKuid() {
        return kuid;
    }

    public void setKuid(int kuid) {
        this.kuid = kuid;
    }

    public int getKsid() {
        return ksid;
    }

    public void setKsid(int ksid) {
        this.ksid = ksid;
    }
    public  Keep(){

    }
    public   Keep(int Kuid,int Ksid){
        this.kuid = Kuid;
        this.ksid = Ksid;
    }
}
