package com.renshiproject.pojo;

public class manager_deptName {
    private int id;
    private String name;
    private String id_number;
    private String phone_number;
    private String gender;
    private String dept_name;
    private int dept_id;
    private String password;

    @Override
    public String toString() {
        return "manager_deptName{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", id_number='" + id_number + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", gender='" + gender + '\'' +
                ", dept_name='" + dept_name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId_number() {
        return id_number;
    }

    public void setId_number(String id_number) {
        this.id_number = id_number;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
