package com.entity;

public class Subject {
    private int subject_Id;
    private String subject_name;

    public int getSubject_Id() {
        return subject_Id;
    }

    public void setSubject_Id(int subject_Id) {
        this.subject_Id = subject_Id;
    }

    public String getSubject_name() {
        return subject_name;
    }

    public void setSubject_name(String subject_name) {
        this.subject_name = subject_name;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "subject_Id=" + subject_Id +
                ", subject_name='" + subject_name + '\'' +
                '}';
    }
}
