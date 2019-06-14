package com.entity;

public class SchoolType {

    private int school_type_id;
    private String school_type_name;

    public int getSchool_type_id() {
        return school_type_id;
    }

    public void setSchool_type_id(int school_type_id) {
        this.school_type_id = school_type_id;
    }

    public String getSchool_type_name() {
        return school_type_name;
    }

    public void setSchool_type_name(String school_type_name) {
        this.school_type_name = school_type_name;
    }

    @Override
    public String toString() {
        return "SchoolType{" +
                "school_type_id=" + school_type_id +
                ", school_type_name='" + school_type_name + '\'' +
                '}';
    }
}
