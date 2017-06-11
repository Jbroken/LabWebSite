package com.wncg.pojo;

import java.util.Date;

public class Number {
    private Integer id;

    private Integer logoid;

    private String name;

    private String graduate;

    private String professionaltitle;

    private Integer type;

    private Date createdate;

    private Date updatedate;

    private Boolean ispass;

    private String resume;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLogoid() {
        return logoid;
    }

    public void setLogoid(Integer logoid) {
        this.logoid = logoid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getGraduate() {
        return graduate;
    }

    public void setGraduate(String graduate) {
        this.graduate = graduate == null ? null : graduate.trim();
    }

    public String getProfessionaltitle() {
        return professionaltitle;
    }

    public void setProfessionaltitle(String professionaltitle) {
        this.professionaltitle = professionaltitle == null ? null : professionaltitle.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(Date updatedate) {
        this.updatedate = updatedate;
    }

    public Boolean getIspass() {
        return ispass;
    }

    public void setIspass(Boolean ispass) {
        this.ispass = ispass;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume == null ? null : resume.trim();
    }
}