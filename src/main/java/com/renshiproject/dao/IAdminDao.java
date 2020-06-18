package com.renshiproject.dao;

import com.renshiproject.dataobject.WageDO;
import com.renshiproject.pojo.allAward_punishInfo;
import com.renshiproject.pojo.allEmployeeInfo;
import com.renshiproject.bean.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IAdminDao {
//    public int addPosition(@Param("addPositionName") String addPositionName);
//    public List<position> findAllPosition();
//    public List<department> findAllDepartment();
//    public List<wage> findAllWage();
//
//    public int renamePosition(@Param("position_id") int position_id, @Param("renamePositionName") String renamePositionName);
//    public List<allEmployeeInfo> searchPosition(@Param("id") int id);
//    public List<allAward_punishInfo> searchAllAward_punish();
//    public List<allAward_punishInfo> searchAward_punish(@Param("employee_id") int employee_id, @Param("date") String date);
//    public int deletePosition(@Param("position_id") int position_id);
//
//    public int addAward_punish(@Param("award_punish") award_punish ap);
//    public int searchPositionId(@Param("position_name") String position_name);
//    public int updateAward_punish(@Param("award_punish") award_punish ap);
//    public int deleteAward_punish(@Param("employee_id") int employee_id, @Param("date") String date);
//    public int addWage(wage wage);
//    public attendance searchLateAndAbsence(@Param("employee_id") int employee_id, @Param("date") String date);
//    public int deleteWage(@Param("employee_id") int employee_id, @Param("date") String date);
//    public int updateWage(@Param("a") wage a,@Param("oldTime") String oldTime);
//    public wage searchWageByIdAndTime(@Param("id") int id,@Param("time") String time);
//    public List<wage> searchWagesByName(String name);



    public List<WageDO> findWage(int id);
    public List<wage> findEmployeeWage(int id);


    public int addPosition(@Param("addPositionName") String addPositionName);
    public List<position> findAllPosition();
    public List<department> findAllDepartment();
    public List<wage> findAllWage();
    public int renamePosition(@Param("position_id") int position_id, @Param("renamePositionName") String renamePositionName);
    public List<allEmployeeInfo> searchPosition(@Param("id") int id);
    public List<allAward_punishInfo> searchAllAward_punish();
    public List<allAward_punishInfo> searchAward_punish(@Param("employee_id") int employee_id, @Param("date") String date);
    public int deletePosition(@Param("position_id") int position_id);

    public int addAward_punish(@Param("award_punish") award_punish ap);
    public int searchPositionId(@Param("position_name") String position_name);
    public int updateAward_punish(@Param("award_punish") award_punish ap);
    public int deleteAward_punish(@Param("employee_id") int employee_id, @Param("date") String date);
    public int addWage(wage wage);
    public attendance searchLateAndAbsence(@Param("employee_id") int employee_id, @Param("date") String date);
    public int deleteWage(@Param("employee_id") int employee_id, @Param("date") String date);
    public int updateWage(@Param("a") wage a,@Param("oldTime") String oldTime);
    public wage searchWageByIdAndTime(@Param("id") int id,@Param("time") String time);
    public List<wage> searchWagesByName(String name);
    public List<allAward_punishInfo> searchAPByName(String name);
    public List<position> searchPositionByName(String name);
    public int updatePassword(@Param("id") int id,@Param("oldpassword") String oldpassword,@Param("newpassword") String newpassword);

}
