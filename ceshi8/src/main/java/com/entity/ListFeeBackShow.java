package com.entity;

import java.util.Date;

public class ListFeeBackShow {
//    f.feedback_id as id,
//    f.date as date,
//    f.name as name,
//    f.school_name as school_name,
//    st.school_type_name as school_type_name,
//    f.feedback_iphone as iphone,
//    pro.product_name as pro_name,
//    sub.subject_name as sub_name,
//    f.feedbac_idea as idea

    private int id;
    private Date date;
    private String name;
    private String school_name;
    private String school_type_name;
    private String iphone;
    private String pro_name;
    private String sub_name;
    private String idea;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSchool_name() {
        return school_name;
    }

    public void setSchool_name(String school_name) {
        this.school_name = school_name;
    }

    public String getSchool_type_name() {
        return school_type_name;
    }

    public void setSchool_type_name(String school_type_name) {
        this.school_type_name = school_type_name;
    }

    public String getIphone() {
        return iphone;
    }

    public void setIphone(String iphone) {
        this.iphone = iphone;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public String getSub_name() {
        return sub_name;
    }

    public void setSub_name(String sub_name) {
        this.sub_name = sub_name;
    }

    public String getIdea() {
        return idea;
    }

    public void setIdea(String idea) {
        this.idea = idea;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "ListFeeBackShow{" +
                "id=" + id +
                ", date=" + date +
                ", name='" + name + '\'' +
                ", school_name='" + school_name + '\'' +
                ", school_type_name='" + school_type_name + '\'' +
                ", iphone='" + iphone + '\'' +
                ", pro_name='" + pro_name + '\'' +
                ", sub_name='" + sub_name + '\'' +
                ", idea='" + idea + '\'' +
                '}';
    }
}
