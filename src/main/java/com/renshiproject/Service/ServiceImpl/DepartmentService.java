package com.renshiproject.Service.ServiceImpl;

import com.github.pagehelper.PageHelper;
import com.renshiproject.Service.IDepartmentService;
import com.renshiproject.dao.DepartmentDOMapper;
import com.renshiproject.dataobject.DepartmentDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class    DepartmentService implements IDepartmentService {

    @Autowired
    private DepartmentDOMapper departmentDOMapper;


    @Override
    public List<DepartmentDO> searchDept(String deptName,int page,int size) {
        PageHelper.startPage(page,size);
        return departmentDOMapper.searchDept(deptName);
    }


    @Override
    public int deleteByPrimaryKey(Integer deptId) {
        return departmentDOMapper.deleteByPrimaryKey(deptId);
    }

    @Override
    public void addDept(DepartmentDO record) {
        if(record!=null) departmentDOMapper.insertSelective(record);
    }


    @Override
    public int insertSelective(DepartmentDO record) {
        return departmentDOMapper.insertSelective(record);
    }

    @Override
    public DepartmentDO selectByPrimaryKey(Integer deptId) {
        return departmentDOMapper.selectByPrimaryKey(deptId);
    }


    @Override
    public int updateByPrimaryKey(DepartmentDO record) {
        return departmentDOMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<DepartmentDO> allDepartment(int page,int size) {
        PageHelper.startPage(page,size);
        return departmentDOMapper.allDepartment();
    }

    @Override
    public int updateDept(DepartmentDO departmentDO) {
        return departmentDOMapper.updateByPrimaryKey(departmentDO);
    }
}
