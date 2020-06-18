<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

            $("#save").click(function () {
                var employee_id=$("#employee_id").val();
                if(employee_id=="")
                {
                    alert("员工id不能为空哦！");
                    return;
                }
                var employee_name=$("#employee_name").val();
                if(employee_name=="")
                {
                    alert("员工姓名不能为空哦！");
                    return;
                }
                var dept_id=$("#dept_id").val();
                var position_id=$("#position_id").val();
                var award_reason=$("#award_reason").val();
                if(award_reason=="")
                {
                    award_reason="";
                }
                var award_money=$("#award_money").val();
                if(award_money=="")
                {
                    award_money=0;
                }
                if(isNaN(award_money))
                {
                    alert("奖金要为全数字哦！");
                    return;
                }
                var punish_reason=$("#punish_reason").val();
                if(punish_reason=="")
                {
                    punish_reason="";
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
                var time=$("#time").val();
                if(time=="")
                {
                    alert("时间不能为空哦！");
                    return;
                }
                var params=params="id="+0+"&employee_id="+employee_id+"&employee_name="+employee_name+"&dept_id="+dept_id+"&position_id="+position_id+"&award_reason="+award_reason+"&award_money="+award_money+"&punish_reason="+punish_reason+"&punish_money="+punish_money+"&time="+time;
               //alert(params);
                $.post("${pageContext.request.contextPath}/admin/addAward_punish",params,function (re) {
                    if("/admin/toAllAward_punish"==re)
                    {
                        window.location.href="/admin/toAllAward_punish";
                    }
                    else if("0"==re)
                    {
                        alert("员工编号为"+employee_id+"的员工在"+time+"的奖惩记录已经存在了哦");
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
                奖惩管理 <small>奖惩表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a
                        href="#">奖惩管理</a></li>
                <li class="active">奖惩表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <%--<form action="${pageContext.request.contextPath}/admin/addAward_punish"--%>
              method="post">
            <!-- 正文区域 -->
            <section class="content"> <!--产品信息-->

                <div class="panel panel-default">
                    <div class="panel-heading">用户信息</div>
                    <div class="row data-type">

                        <%--<div class="col-md-2 title">id</div>--%>
                        <%--<div class="col-md-4 data">--%>
                            <%--<input type="text" class="form-control" name="id" id="id"--%>
                                   <%--placeholder="id" value="">--%>
                        <%--</div>--%>

                        <div class="col-md-2 title">员工id</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="employee_id" id="employee_id"
                                   placeholder="employee_id" value="">
                        </div>

                        <div class="col-md-2 title">用户名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="employee_name" id="employee_name"
                                   placeholder="用户名称" value="">
                        </div>

                        <div class="col-md-2 title">部门名称</div>
                        <div class="col-md-4 data">
                            <input type="hidden" class="form-control"
                                   placeholder="部门名称" value="">
                            <select class="col-md-4 data" name="dept_id" id="dept_id">
                                <c:forEach var="deptInfo" items="${allDept}">
                                    <option value="${deptInfo.dept_id}">${deptInfo.dept_name}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="col-md-2 title">职位名称</div>
                        <div class="col-md-4 data">
                            <input type="hidden" class="form-control"
                                   placeholder="职位名称" value="">
                            <select class="col-md-4 data" name="position_id" id="position_id">
                                <c:forEach var="positionInfo" items="${allPosition}">
                                    <option value="${positionInfo.position_id}">${positionInfo.position_name}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="col-md-2 title">奖励原因</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="award_reason" id="award_reason"
                                   placeholder="奖励原因" value="">
                        </div>

                        <div class="col-md-2 title">奖金</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="award_money" id="award_money"
                                   placeholder="奖金" value="">
                        </div>

                        <div class="col-md-2 title">处罚原因</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="punish_reason" id="punish_reason"
                                   placeholder="处罚原因" value="">
                        </div>

                        <div class="col-md-2 title">罚金</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="punish_money" id="punish_money"
                                   placeholder="罚金" value="">
                        </div>

                        <div class="col-md-2 title">时间</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="time" id="time"
                                   placeholder="时间" value="">
                        </div>


                    </div>
                </div>
                <!--订单信息/--> <!--工具栏-->
                <div class="box-tools text-center">
                    <button type="submit" class="btn bg-maroon" id="save">保存</button>
                    <button type="button" class="btn bg-default"
                            onclick="history.back(-1);">返回</button>
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
        <strong>Copyright &copy; 2019-7 <a
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