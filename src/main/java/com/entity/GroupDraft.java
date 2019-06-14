package com.entity;

import java.util.Date;

public class GroupDraft {

    private int group_id;
    private Date date;
    private String subject;
    private String application_round;
    private String application_chapter;
    private String province;
    private String textbook_version;
    private String word_path;

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getApplication_round() {
        return application_round;
    }

    public void setApplication_round(String application_round) {
        this.application_round = application_round;
    }

    public String getApplication_chapter() {
        return application_chapter;
    }

    public void setApplication_chapter(String application_chapter) {
        this.application_chapter = application_chapter;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getTextbook_version() {
        return textbook_version;
    }

    public void setTextbook_version(String textbook_version) {
        this.textbook_version = textbook_version;
    }

    public String getWord_path() {
        return word_path;
    }

    public void setWord_path(String word_path) {
        this.word_path = word_path;
    }

    @Override
    public String toString() {
        return "GroupDraft{" +
                "group_id=" + group_id +
                ", date=" + date +
                ", subject='" + subject + '\'' +
                ", application_round='" + application_round + '\'' +
                ", application_chapter='" + application_chapter + '\'' +
                ", province='" + province + '\'' +
                ", textbook_version='" + textbook_version + '\'' +
                ", word_path='" + word_path + '\'' +
                '}';
    }
}
