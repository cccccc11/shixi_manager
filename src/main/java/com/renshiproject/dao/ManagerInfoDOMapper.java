package com.renshiproject.dao;

import com.renshiproject.dataobject.ManagerInfoDO;

public interface ManagerInfoDOMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager_info
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager_info
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    int insert(ManagerInfoDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager_info
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    int insertSelective(ManagerInfoDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager_info
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    ManagerInfoDO selectByPrimaryKey(Integer id);

    ManagerInfoDO selectByIdAndPwd(ManagerInfoDO managerInfoDO);


    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager_info
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    int updateByPrimaryKeySelective(ManagerInfoDO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager_info
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    int updateByPrimaryKey(ManagerInfoDO record);
}