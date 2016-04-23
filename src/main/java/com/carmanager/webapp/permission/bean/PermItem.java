package com.carmanager.webapp.permission.bean;

public class PermItem {
    private String id;

    private String name;

    private String number;

    private String ui;

    private String longnumber;

    private String parentid;

    private Integer isleaf;

    private String description;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    public String getUi() {
        return ui;
    }

    public void setUi(String ui) {
        this.ui = ui == null ? null : ui.trim();
    }

    public String getLongnumber() {
        return longnumber;
    }

    public void setLongnumber(String longnumber) {
        this.longnumber = longnumber == null ? null : longnumber.trim();
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public Integer getIsleaf() {
        return isleaf;
    }

    public void setIsleaf(Integer isleaf) {
        this.isleaf = isleaf;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}