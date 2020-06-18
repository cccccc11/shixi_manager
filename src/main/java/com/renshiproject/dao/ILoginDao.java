package com.renshiproject.dao;


import com.renshiproject.pojo.allEmployeeInfo;
import com.renshiproject.bean.administratorinfo;
import com.renshiproject.bean.manager_info;
import com.renshiproject.pojo.manager_deptName;
import org.apache.ibatis.annotations.Param;

public interface ILoginDao {
    public administratorinfo administratorinfoLogin(@Param("id") String id, @Param("password") String password);
    public manager_deptName manager_infoLogin(@Param("id") String id, @Param("password") String password);
    public allEmployeeInfo employeeLogin(@Param("id") String id, @Param("password") String password);
}
