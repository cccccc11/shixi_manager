<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">


    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function(){
            $("#search").click(function () {
                var employee_id=$("#employee_id").val();
                var date=$("#time").val();
                var params="employee_id="+employee_id+"&date="+date;
                $.post("${pageContext.request.contextPath}/admin/searchAward_punish",params,function (re) {
                    if(re=="noID")
                    {
                        alert("没有该id！");
                    }
                    else
                    {
                        var obj=eval("("+re+")");
                        // alert(obj.position_name);
                        // $("#late_time").val(obj.late);
                        // $("#absence_time").val(obj.absence);
                         $("#employee_name").val(obj.employee_name);
                         $("#dept_name").val(obj.dept_name);
                         $("#position").val(obj.position_name);
                        $("#award").val(obj.award_money);
                        $("#punish_money").val(obj.punish_money);
                        $("#basic_wage").val(2000);
                        $("#salary").val(2000+obj.award_money-obj.punish_money-obj.late*50-obj.absence*100);

                    }
                });
            });
            $("#basic_wage").on("change",function () {
                var basic_wage=$("#basic_wage").val();
                var award=$("#award").val();
                if(award=="")
                {
                    award=0;
                }
                var punish_money=$("#punish_money").val();
                if(punish_money=="")
                {
                    punish_money=0;
                }
                $("#salary").val(parseFloat(basic_wage)+parseFloat(award)-parseFloat(punish_money));
            });
            $("#award").on("change",function () {
                var basic_wage=$("#basic_wage").val();
                var award=$("#award").val();
                if(award=="")
                {
                    award=0;
                }
                var punish_money=$("#punish_money").val();
                if(punish_money=="")
                {
                    punish_money=0;
                }
                $("#salary").val(parseFloat(basic_wage)+parseFloat(award)-parseFloat(punish_money));
            });
            $("#punish_money").on("change",function () {
                var basic_wage=$("#basic_wage").val();
                var award=$("#award").val();
                if(award=="")
                {
                    award=0;
                }
                var punish_money=$("#punish_money").val();
                if(punish_money=="")
                {
                    punish_money=0;
                }
                $("#salary").val(parseFloat(basic_wage)+parseFloat(award)-parseFloat(punish_money));
            });
            $("#save").click(function () {
                var employee_id=$("#employee_id").val();
                if(employee_id=="")
                {
                    alert("员工id不能为空哦！");
                    return;
                }
                if(isNaN(employee_id))
                {
                    alert("员工id要为全数字哦！");
                    return;
                }
                var employee_name=$("#employee_name").val();
                if(employee_name=="")
                {
                    alert("员工姓名不能为空哦！");
                    return;
                }
                var dept_name=$("#dept_name").val();
                var position=$("#position").val();
                var basic_wage=$("#basic_wage").val();
                if(basic_wage=="")
                {
                    alert("基本工资不能为空哦！");
                    return;
                }
                if(isNaN(basic_wage))
                {
                    alert("基本工资要为全数字哦！");
                    return;
                }
                var award=$("#award").val();
                if(award=="")
                {
                    award=0;
                }
                if(isNaN(award))
                {
                    alert("奖金要为全数字哦！");
                    return;
                }
                var punish_money=$("#punish_money").val();
                if(punish_money=="")
                {
                   punish_money=0;
                }
                if(isNaN(punish_money))
                {
                    alert("罚金要为全数字哦！");
                    return;
                }
                var salary=$("#salary").val();
                var time=$("#time").val();
                if(time=="")
                {
                    alert("时间不能为空！");
                    return;
                }
                var params="employee_id="+employee_id+"&employee_name="+employee_name+"&dept_name="+dept_name+"&position="+position+"&basic_wage="+basic_wage+"&award="+award+"&punish_money="+punish_money+"&salary="+salary+"&time="+time;
                // alert(params);
                $.post("/admin/addWage",params,function (re) {
                    if("/admin/findAllWage"==re)
                    {
                        window.location.href="/admin/findAllWage";
                    }
                    else if("0"==re)
                    {
                        alert("员工编号为"+employee_id+"的员工"+employee_name+"在"+time+"的工资记录已经存在了哦");
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


    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="./header.jsp"></jsp:include>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="./aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                工资管理 <small>工资表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="#">工资管理</a></li>
                <li class="active">工资表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <%--<form action="/admin/addWage"--%>
              <%--method="post">--%>
            <!-- 正文区域 -->


            <section class="content"> <!--产品信息-->

                <div class="panel panel-default">
                    <div class="panel-heading">用户信息</div>
                    <div class="row data-type">

                        <div class="col-md-2 title">id</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="employee_id " id="employee_id"
                                   placeholder="id" >
                        </div>

                        <div class="col-md-2 title">工资发放时间</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="time" id="time"
                                   placeholder="工资发放时间" >
                        </div>

                        <div class="col-md-2 title">用户名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="employee_name" id="employee_name"
                                   placeholder="用户名称" readonly>
                        </div>

                        <div class="col-md-2 title">部门名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control"
                                   placeholder="部门名称" id="dept_name" readonly>
                            <%--<select class="col-md-4 data" name="dept_name" id="dept_name">--%>
                                <%--<c:forEach var="deptInfo" items="${allDept}">--%>
                                    <%--<option value="${deptInfo.dept_name}">${deptInfo.dept_name}</option>--%>
                                <%--</c:forEach>--%>
                            <%--</select>--%>
                        </div>

                        <div class="col-md-2 title">职位名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control"
                                   placeholder="职位名称" id="position" readonly>
                                <%--<select class="col-md-4 data" name="position" id="position">--%>
                                    <%--<c:forEach var="positionInfo" items="${allPosition}">--%>
                                        <%--<option value="${positionInfo.position_name}">${positionInfo.position_name}</option>--%>
                                    <%--</c:forEach>--%>
                                <%--</select>--%>
                        </div>

                        <div class="col-md-2 title">基本工资</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="basic_wage" id="basic_wage"
                                   placeholder="基本工资" readonly>
                        </div>

                        <div class="col-md-2 title">奖金</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="award" id="award"
                                   placeholder="奖金" readonly>
                        </div>

                        <div class="col-md-2 title">罚金</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="punish_money" id="punish_money"
                                   placeholder="罚金" readonly>
                        </div>

                        <div class="col-md-2 title">实发工资</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="salary" readonly id="salary"
                                   placeholder="实发工资" readonly>
                        </div>




                    </div>
                </div>
                <!--订单信息/--> <!--工具栏-->
                <div class="box-tools text-center">
                    <button type="submit" class="btn bg-maroon" id="save">保存</button>
                    <button type="button" class="btn bg-default"
                            onclick="history.back(-1);">返回</button>
                    <button type="button" id="search">搜索</button>
                </div>
                <!--工具栏/--> </section>
            <!-- 正文区域 /-->
        <%--</form>--%>
    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2019-7<a
                href="http://www.itcast.cn"></a>.
        </strong> All rights reserved. </footer>
    <!-- 底部导航 /-->

</div>


<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }
</script>


</body>

</html>