package com.entity;

import java.util.Date;

public class Feeback {

    private int feedback_id;
    private Date date;
    private String name;
    private String school_name;
    private int school_type_id;
    private int feedback_iphone;
    private int product_id;
    private int feedbac_subject_id;
    private String feedbac_idea;

    public Feeback() {
    }

    public int getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSchool_name() {
        return school_name;
    }

    public void setSchool_name(String school_name) {
        this.school_name = school_name;
    }

    public int getSchool_type_id() {
        return school_type_id;
    }

    public void setSchool_type_id(int school_type_id) {
        this.school_type_id = school_type_id;
    }

    public int getFeedback_iphone() {
        return feedback_iphone;
    }

    public void setFeedback_iphone(int feedback_iphone) {
        this.feedback_iphone = feedback_iphone;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getFeedbac_subject_id() {
        return feedbac_subject_id;
    }

    public void setFeedbac_subject_id(int feedbac_subject_id) {
        this.feedbac_subject_id = feedbac_subject_id;
    }

    public String getFeedbac_idea() {
        return feedbac_idea;
    }

    public void setFeedbac_idea(String feedbac_idea) {
        this.feedbac_idea = feedbac_idea;
    }

    @Override
    public String toString() {
        return "Feeback{" +
                "feedback_id=" + feedback_id +
                ", date=" + date +
                ", name='" + name + '\'' +
                ", school_name='" + school_name + '\'' +
                ", school_type_id=" + school_type_id +
                ", feedback_iphone=" + feedback_iphone +
                ", product_id=" + product_id +
                ", feedbac_subject_id=" + feedbac_subject_id +
                ", feedbac_idea='" + feedbac_idea + '\'' +
                '}';
    }
}
