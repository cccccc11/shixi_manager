<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<body>
<form action="${pageContext.request.contextPath}/managers/addAttendance.do" method="post">
    <table>
        <tr>
            <td>员工编号：</td>
            <td><input type="text" name="employee_id"></td>
        </tr>
        <tr>
            <td>员工姓名：</td>
            <td><input type="text" name="employee_name"></td>
        </tr>
        <tr>
            <td>时间：</td>
            <td><input type="text" name="date"></td>
        </tr>
        <tr>
            <td>部门：</td>
            <td>    <select name="dept_name">
                     <option value="dept1">部门一</option>
                     <option value="dept2">部门二</option>
                     <option value="dept3">部门三</option>
                    </select>
            </td>
        </tr>
        <tr>
            <td>职位：</td>
            <td>    <select name="position">
                     <option value="p1">职位一</option>
                     <option value="p2">职位二</option>
                     <option value="p3">职位三</option>
                    </select>
            </td>
        </tr>
        <tr>
            <td>缺席次数：</td>
            <td><input type="text" name="absence"></td>
        </tr>
        <tr>
            <td>迟到次数：</td>
            <td><input type="text" name="late"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>

</body>
</html>