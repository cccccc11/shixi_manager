package com.renshiproject.dataobject;

public class DepartmentDO {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column department.dept_id
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    private Integer dept_id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column department.dept_name
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    private String dept_name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column department.manager_name
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    private String manager_name;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column department.dept_id
     *
     * @return the value of department.dept_id
     *
     * @mbg.generated Sat Jun 29 09:14:49 CST 2019
     */
    public Integer getDept_id() {
        return dept_id;
    }

    public void setDept_id(Integer dept_id) {
        this.dept_id = dept_id;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getManager_name() {
        return manager_name;
    }

    public void setManager_name(String manager_name) {
        this.manager_name = manager_name;
    }
}