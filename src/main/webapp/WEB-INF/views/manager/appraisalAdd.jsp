<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="人力资源管理平台" />
    <title>人力资源管理平台</title>
    <link type="text/css" rel="stylesheet" href="../css/css1.css" />

    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function(){
            $("#save").click(function () {
                var employee_id=$("#employee_id").val();
                if(employee_id=="")
                {
                    alert("员工编号不能为空哦!");
                    return;
                }
                if(isNaN(employee_id))
                {
                    alert("员工编号为数字哦！");
                    return;
                }
                var employee_name=$("#employee_name").val();
                if(employee_name=="")
                {
                    alert("员工姓名不能为空哦!");
                    return;
                }
                var dept_name=$("#dept_name").val();
                var position_name=$("#position").val();
                var absence=$("#absence").val();
                if(absence=="")
                {
                    absence=0;
                }
                if(isNaN(absence))
                {
                    alert("缺席次数为数字哦！");
                    return;
                }
                var late=$("#late").val();
                if(late=="")
                {
                    late=0;
                }
                if(isNaN(late))
                {
                    alert("迟到次数为数字哦！");
                    return
                }
                var month=$("#month").val();
                var year=$("#year").val();
                var params="employee_id="+employee_id+"&employee_name="+employee_name+"&dept_name="+dept_name+"&position="+position_name+"&absence="+absence+"&late="+late+"&year="+year+"&month="+month;
                $.post("/managers/addAttendance.do",params,function (re) {
                    if("/managers/toAttendance"==re)
                    {
                        window.location.href="/managers/toAttendance";
                    }
                    else if("0"==re)
                    {
                        alert("编号为"+employee_id+"在"+year+"年"+month+"月"+"的出勤记录已经存在了哦！");
                    }
                    else if("00"==re)
                    {
                        alert("00");
                    }
                    else
                    {
                        alert("else");
                    }
                })
            })
        });
    </script>
</head>
<body >
<div class="header">
    <div class="top"> <img class="logo" src="../img1/logo.jpg" />
        <ul class="nav">
            <li class="seleli"><a href="/login/toManager">首页</a></li>
            <li class="seleli"><a href="/managers/toAttendance">考勤信息</a></li>
            <li><a href="/managers/searchAllEmployeeInfo?dept_id=${currentManager.dept_id}">员工信息</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="leftbar">
        <div class="lm01"> <img class="peptx" src="../img/tximg.jpg" />
            <div class="pepdet">
                <p class="pepname">${currentManager.name}</p>
                <p>Manager</p>
                <p>${currentManager.dept_name}</p>
                <a href="/admin/logOff">注销</a>
            </div>
            <div class="clear"></div>
        </div>
        <div class="lm02">
            <div class="title"><img class="icon" src="../img/dataicon.jpg" />
                <h2>日历</h2>
            </div>
            <div class="detail"> <img class="" src="../img1/kj_01.jpg" /> </div>
        </div>
        <div class="lm03">
            <div class="title"><img style="padding-right:5px;" class="icon" src="../img/weaicon.jpg" />
                <h2>天气</h2>
            </div>
            <div class="detail"> <img class="" src="../img/kj_02.jpg" /> </div>
        </div>
    </div>
<div class="mainbody">
	<div class="kqinfo">
       	<h1>考勤管理</h1>
		<%--<form action="/managers/addAttendance.do" method="post" >--%>
			<table class="addTable" border="0" width="80% " align="center"  >
				<tr>
                    <th >员工编号：</th><td><input type="text" name="employee_id" id="employee_id"></td>
				    <th >员工姓名:</th><td><input type="text" name="employee_name" id="employee_name"></td>
                </tr>
				<tr>
                    <th>部门：</th>
                    <td>
                        <select name="dept_name " id="dept_name">
                            <c:forEach var="dept" items="${allDept}">
                                <option value="${dept.dept_name}">${dept.dept_name}</option>
                            </c:forEach>
                        </select>
                    </td>
					<th>职位：</th>
                    <td>
                        <select name="position" id="position">
                            <c:forEach var="position" items="${allPosition}">
                                <option value="${position.position_name}">${position.position_name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
				<tr>
                    <th>缺席次数：</th><td>	<input type="text" name="absence" id="absence"></td>
					<th>迟到次数：</th><td>	<input type="text" name="late" id="late"></td>
                </tr>
				<tr><th>月        份：</th><td>
                    <select name ="month" id="month">
				
                <option selected>01</option>
                <option >02</option>   
                <option >03</option>
                <option >04</option>
				  <option >05</option>   
				<option >06</option>
				<option >07</option>
				  <option >08</option>   
				<option >09</option>
				<option >10</option>
				  <option >11</option>   
				<option >12</option>
				
             </select></td>
			    <th> 年份:*</th><td><select name ="year" id="year">
                <option selected>2018</option>
                <option >2019</option>   
                <option >2020</option>
                <option >2021</option>
				  <option >2022</option>   
			</select></td></tr>
			
				<tr><td colspan="2"  ><input type="reset"  value="重置" />
				&nbsp;<input type="submit"  value="保存" id="save"/></td></tr>
			</table>
		<%--</form>--%>
</div>
</div><!--mainbody-->
</div><!--container-->
</body>
</html>
