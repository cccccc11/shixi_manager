package com.renshiproject.Service;



import com.renshiproject.bean.administratorinfo;
import com.renshiproject.bean.manager_info;
import com.renshiproject.pojo.allEmployeeInfo;
import com.renshiproject.pojo.manager_deptName;


public interface ILoginService {
    public administratorinfo administratorinfoLogin(String id, String password);
    public manager_deptName manager_infoLogin(String id, String password);
    public allEmployeeInfo employeeLogin(String id, String password);
}
