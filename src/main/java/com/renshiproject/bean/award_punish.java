package com.renshiproject.bean;

public class award_punish {
    private int id;
    private int employee_id;
    private String employee_name;
    private int dept_id;
    private int position_id;
    private String award_reason;
    private int award_money;
    private String punish_reason;
    private int punish_money;
    private String time;

    @Override
    public String toString() {
        return "award_punish{" +
                "id=" + id +
                ", employee_id=" + employee_id +
                ", employee_name='" + employee_name + '\'' +
                ", dept_id=" + dept_id +
                ", position_id=" + position_id +
                ", award_reason='" + award_reason + '\'' +
                ", award_money=" + award_money +
                ", punish_reason='" + punish_reason + '\'' +
                ", punish_money=" + punish_money +
                ", time='" + time + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public String getAward_reason() {
        return award_reason;
    }

    public void setAward_reason(String award_reason) {
        this.award_reason = award_reason;
    }

    public int getAward_money() {
        return award_money;
    }

    public void setAward_money(int award_money) {
        this.award_money = award_money;
    }

    public String getPunish_reason() {
        return punish_reason;
    }

    public void setPunish_reason(String punish_reason) {
        this.punish_reason = punish_reason;
    }

    public int getPunish_money() {
        return punish_money;
    }

    public void setPunish_money(int punish_money) {
        this.punish_money = punish_money;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
