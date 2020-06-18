package com.renshiproject.bean;

public class administratorinfo {
    private int id;
    private String password;

    @Override
    public String toString() {
        return "administratorinfo{" +
                "id=" + id +
                ", password='" + password + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
