package com.renshiproject.bean;

public class department {
    private int dept_id;
    private String dept_name;
    private String manager_name;

    @Override
    public String toString() {
        return "department{" +
                "dept_id=" + dept_id +
                ", dept_name='" + dept_name + '\'' +
                ", manager_name='" + manager_name + '\'' +
                '}';
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getManager_name() {
        return manager_name;
    }

    public void setManager_name(String manager_name) {
        this.manager_name = manager_name;
    }
}
