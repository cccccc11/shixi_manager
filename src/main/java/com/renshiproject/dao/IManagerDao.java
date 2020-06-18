package com.renshiproject.dao;

import com.renshiproject.pojo.allEmployeeInfo;
import com.renshiproject.bean.attendance;
import com.renshiproject.bean.employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IManagerDao {
    public int addAttendance(@Param("employee") employee e, @Param("dept_name") String dept_name, @Param("position") String position, @Param("absence") int absence, @Param("late") int late, @Param("date") String date);
    public List<allEmployeeInfo> searchAllEmployeeInfo(@Param("dept_id") int dept_id);
    public List<attendance> findAllAttendance();
}
