package com.renshiproject.pojo;

public class allAward_punishInfo {
    private int id;
    private int employee_id;
    private String employee_name;
    private String dept_name;
    private String position_name;
    private String award_reason;
    private int award_money;
    private String punish_reason;
    private int punish_money;
    private String time;
    private int late;
    private int absence;

    @Override
    public String toString() {
        return "allAward_punishInfo{" +
                "id=" + id +
                ", employee_id=" + employee_id +
                ", employee_name='" + employee_name + '\'' +
                ", dept_name='" + dept_name + '\'' +
                ", position_name='" + position_name + '\'' +
                ", award_reason='" + award_reason + '\'' +
                ", award_money=" + award_money +
                ", punish_reason='" + punish_reason + '\'' +
                ", punish_money=" + punish_money +
                ", time='" + time + '\'' +
                ", late=" + late +
                ", absence=" + absence +
                '}';
    }

    public int getLate() {
        return late;
    }

    public void setLate(int late) {
        this.late = late;
    }

    public int getAbsence() {
        return absence;
    }

    public void setAbsence(int absence) {
        this.absence = absence;
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

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name;
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
