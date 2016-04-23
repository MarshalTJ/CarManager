package com.carmanager.webapp.permission.bean;

public class RolePerm {
    private String id;

    private String roleid;

    private String permid;

    private Integer permtype;

    private String ruleexpr;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public String getPermid() {
        return permid;
    }

    public void setPermid(String permid) {
        this.permid = permid == null ? null : permid.trim();
    }

    public Integer getPermtype() {
        return permtype;
    }

    public void setPermtype(Integer permtype) {
        this.permtype = permtype;
    }

    public String getRuleexpr() {
        return ruleexpr;
    }

    public void setRuleexpr(String ruleexpr) {
        this.ruleexpr = ruleexpr == null ? null : ruleexpr.trim();
    }
}