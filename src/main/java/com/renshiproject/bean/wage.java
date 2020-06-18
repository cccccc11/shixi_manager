package com.renshiproject.bean;

public class wage {
    private int employee_id;
    private String employee_name;
    private String dept_name;
    private String position;
    private float basic_wage;
    private int award;
    private int punish_money;
    private float salary;
    private String time;

    @Override
    public String toString() {
        return "wage{" +
                "employee_id=" + employee_id +
                ", employee_name='" + employee_name + '\'' +
                ", dept_name='" + dept_name + '\'' +
                ", position='" + position + '\'' +
                ", basic_wage=" + basic_wage +
                ", award=" + award +
                ", punish_money=" + punish_money +
                ", salary=" + salary +
                ", time=" + time +
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

    public float getBasic_wage() {
        return basic_wage;
    }

    public void setBasic_wage(float basic_wage) {
        this.basic_wage = basic_wage;
    }

    public int getAward() {
        return award;
    }

    public void setAward(int award) {
        this.award = award;
    }

    public int getPunish_money() {
        return punish_money;
    }

    public void setPunish_money(int punish_money) {
        this.punish_money = punish_money;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

}
