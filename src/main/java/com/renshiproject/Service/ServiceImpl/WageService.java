package com.renshiproject.Service.ServiceImpl;

import com.renshiproject.Service.IWageService;
import com.renshiproject.dao.WageDOMapper;
import com.renshiproject.dataobject.WageDO;
import org.springframework.stereotype.Service;

@Service
public class WageService implements IWageService {

    private WageDOMapper wageDOMapper;


    @Override
    public int insert(WageDO record) {
        return wageDOMapper.insert(record);
    }

    @Override
    public int insertSelective(WageDO record) {
        return wageDOMapper.insertSelective(record);
    }



    @Override
    public int updateByPrimaryKeySelective(WageDO record) {
        return wageDOMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(WageDO record) {
        return wageDOMapper.updateByPrimaryKey(record);
    }
}
