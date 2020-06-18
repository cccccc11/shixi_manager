package com.renshiproject.bean;

public class attendance {
    private int employee_id;
    private String employee_name;
    private String dept_name;
    private String position;
    private int absence;
    private int late;
    private String time;

    @Override
    public String toString() {
        return "attendance{" +
                "employee_id=" + employee_id +
                ", employee_name='" + employee_name + '\'' +
                ", dept_name=" + dept_name +
                ", position=" + position +
                ", absence=" + absence +
                ", late=" + late +
                ", time='" + time + '\'' +
                '}';
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getEmployee_name() {
        return employee_name;
    }

    public void setEmployee_name(String employee_name) {
        this.employee_name = employee_name;
    }

    public int getAbsence() {
        return absence;
    }

    public void setAbsence(int absence) {
        this.absence = absence;
    }

    public int getLate() {
        return late;
    }

    public void setLate(int late) {
        this.late = late;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
