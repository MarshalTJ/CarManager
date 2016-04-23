package com.carmanager.webapp.basedata.bean;

import java.math.BigDecimal;
import java.util.Date;

public class Shop {
    private String id;

    private String name;

    private String number;

    private String parentid;

    private String taxnumber;

    private Integer isgroup;

    private String accountbank;

    private String accountperiodtype;

    private String juridicalperson;

    private String address;

    private BigDecimal registeredcapital;

    private Date setupdate;

    private Date endupdate;

    private String registeredcode;

    private String description;

    private String creator;

    private Date createtime;

    private String lastupdateuser;

    private Date lastupdatetime;

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

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public String getTaxnumber() {
        return taxnumber;
    }

    public void setTaxnumber(String taxnumber) {
        this.taxnumber = taxnumber == null ? null : taxnumber.trim();
    }

    public Integer getIsgroup() {
        return isgroup;
    }

    public void setIsgroup(Integer isgroup) {
        this.isgroup = isgroup;
    }

    public String getAccountbank() {
        return accountbank;
    }

    public void setAccountbank(String accountbank) {
        this.accountbank = accountbank == null ? null : accountbank.trim();
    }

    public String getAccountperiodtype() {
        return accountperiodtype;
    }

    public void setAccountperiodtype(String accountperiodtype) {
        this.accountperiodtype = accountperiodtype == null ? null : accountperiodtype.trim();
    }

    public String getJuridicalperson() {
        return juridicalperson;
    }

    public void setJuridicalperson(String juridicalperson) {
        this.juridicalperson = juridicalperson == null ? null : juridicalperson.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public BigDecimal getRegisteredcapital() {
        return registeredcapital;
    }

    public void setRegisteredcapital(BigDecimal registeredcapital) {
        this.registeredcapital = registeredcapital;
    }

    public Date getSetupdate() {
        return setupdate;
    }

    public void setSetupdate(Date setupdate) {
        this.setupdate = setupdate;
    }

    public Date getEndupdate() {
        return endupdate;
    }

    public void setEndupdate(Date endupdate) {
        this.endupdate = endupdate;
    }

    public String getRegisteredcode() {
        return registeredcode;
    }

    public void setRegisteredcode(String registeredcode) {
        this.registeredcode = registeredcode == null ? null : registeredcode.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getLastupdateuser() {
        return lastupdateuser;
    }

    public void setLastupdateuser(String lastupdateuser) {
        this.lastupdateuser = lastupdateuser == null ? null : lastupdateuser.trim();
    }

    public Date getLastupdatetime() {
        return lastupdatetime;
    }

    public void setLastupdatetime(Date lastupdatetime) {
        this.lastupdatetime = lastupdatetime;
    }
}