package com.renshiproject.dataobject;

public class PositionDO {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column position.position_id
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    private Integer positionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column position.position_name
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    private String positionName;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column position.position_id
     *
     * @return the value of position.position_id
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    public Integer getPositionId() {
        return positionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column position.position_id
     *
     * @param positionId the value for position.position_id
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column position.position_name
     *
     * @return the value of position.position_name
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    public String getPositionName() {
        return positionName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column position.position_name
     *
     * @param positionName the value for position.position_name
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    public void setPositionName(String positionName) {
        this.positionName = positionName == null ? null : positionName.trim();
    }
}