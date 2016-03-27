package com.kingdee.carmanager.test.bean;

public class User {
    private Integer fid;

    private String fname;

    private String fpassword;

    private Integer fage;

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname == null ? null : fname.trim();
    }

    public String getFpassword() {
        return fpassword;
    }

    public void setFpassword(String fpassword) {
        this.fpassword = fpassword == null ? null : fpassword.trim();
    }

    public Integer getFage() {
        return fage;
    }

    public void setFage(Integer fage) {
        this.fage = fage;
    }
}