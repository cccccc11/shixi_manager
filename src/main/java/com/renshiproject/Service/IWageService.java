package com.renshiproject.Service;

import com.renshiproject.dataobject.WageDO;

public interface IWageService {



    public int insert(WageDO record);

    public int insertSelective(WageDO record);


    public int updateByPrimaryKeySelective(WageDO record);

    public int updateByPrimaryKey(WageDO record);
}
