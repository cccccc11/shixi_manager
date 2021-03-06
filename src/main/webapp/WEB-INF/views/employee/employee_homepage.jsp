<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="人力资源管理平台" />
    <title>人力资源管理平台</title>
    <link type="text/css" rel="stylesheet" href="../css1/css.css" />
    <script src="js1/tab.js"></script>
</head>
<body>
<div class="header">
    <div class="top"> <img class="logo" src="../img1/logo.jpg" />
        <ul class="nav">
            <li class="seleli"><a href="/employee/toHomePage.do">首页</a></li>
            <li><a href="/employee/getInfo.do?id=${currentEmployee.id}">个人信息</a></li>
            <li ><a href="/employee/getWageInfo.do?id=${currentEmployee1.id}">工资查询</a></li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="leftbar">
        <div class="lm01"> <img class="peptx" src="../img1/tximg.jpg" />
            <div class="pepdet">
                <p class="pepname">${currentEmployee.name}</p>
                <p>Employee</p>
                <a href="/admin/logOff">注销</a>
                <%--<p>${currentEmployee.dept_name}</p>--%>
            </div>
            <div class="clear"></div>
        </div>
        <div class="lm02">
            <div class="title"><img class="icon" src="../img1/dataicon.jpg" />
                <h2>日历</h2>
            </div>
            <div class="detail"> <img class="" src="../img1/kj_01.jpg" /> </div>
        </div>
        <div class="lm03">
            <div class="title"><img style="padding-right:5px;" class="icon" src="../img1/weaicon.jpg" />
                <h2>天气</h2>
            </div>
            <div class="detail"> <img class="" src="../img1/kj_02.jpg" /> </div>
        </div>
    </div>

    <div class="mainbody">

        <div class="adtip">
            <div class="tip">
                <p class="goom">早上好！今天又是元气满满的一天呢！</p>
            </div>
        </div>

        <div class="rig_lm01">
            <div class="title"><img src="../img1/listicon.jpg" class="icon" style="padding-top:13px;">
                <h2>公告</h2>
                <span class="red_numb">有新的公告</span></div>
            <div class="detail">
                    <span >关于公司人员变动的通知！</span>

                    <tbody>
                    <table align="center" width="1000" bgcolor="#faebd7">
                        <tr>
                            <th>时间</th><th>内容</th>
                        </tr>
                    <c:forEach var="announcement" items="${announcementDOS}">
                        <tr>
                            <td align="center">${announcement.time}</td>
                            <td align="center">${announcement.content}</td>
                        </tr>
                    </c:forEach>
                    </table>
                    </tbody>
                </div>
            </div>

</div>
<div class="footer"></div>
</body>
</html>