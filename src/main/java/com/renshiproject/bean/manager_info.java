package com.renshiproject.bean;

public class manager_info {
    private int id;
    private String name;
    private String id_number;
    private String phone_number;
    private String gender;
    private int dept_id;
    private String password;

    @Override
    public String toString() {
        return "manager_info{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", id_number='" + id_number + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", gender='" + gender + '\'' +
                ", dept_id=" + dept_id +
                ", password='" + password + '\'' +
                '}';
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

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
