<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html  lang="en">

<head>


    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        jQuery(document).ready(function(){
            jQuery("#login").click(function () {
                var id=jQuery("#id").val();
                if(id=="")
                {
                    alert("用户名不能为空");
                    return;
                }
                var password=jQuery("#password").val();
                if(password=="")
                {
                    alert("密码不能为空");
                    return;
                }
                var role=$("input[name='role']:checked").val();
                var params="id="+id+"&password="+password+"&role="+role;
                $.post("/login/login.do",params,function(re)
                {
                    if(re=="")
                    {
                        alert("用户名或密码错误！");
                        return;
                    }
                   window.location.href=re;
                });
            });
        });
    </script>

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">

    <!-- title of site -->
    <title>Sign in</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="${pageContext.request.contextPath}/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">

    <!--animate.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- signin end -->
<section class="signin">
    <div class="container-fluid">
        <div class="row">

            <div class="col-sm-4">
                <div class="single-sign">
                    <div class="sign-bg">

                    </div><!--/.sign-bg -->
                </div><!--/.single-sign -->
            </div><!--/.col -->
            <%--<form  method="post" id="loginForm" onsubmit="return login()">--%>
                <div class="col-sm-8">
                    <div class="single-sign">
                        <div class="sign-content">
                            <h2>sign in</h2>

                            <div class="signin-form">
                                <div class=" ">
                                    <div class=" ">
                                        <div class="form-group">
                                            <label for="id">account</label>
                                            <input type="text" name="id" class="form-control" id="id" placeholder="Account">
                                        </div><!--/.form-group -->
                                        <div class="form-group">
                                            <label for="password">password</label>
                                            <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                                        </div><!--/.form-group -->
                                    </div><!--/.col -->
                                </div><!--/.row -->

                            </div><!--/.signin-form -->
                            <div class="signin-password">
                                <div class="awesome-checkbox-list">
                                    <ul class="unstyled centered">

                                        <li>
                                            <%--<form name="myform" method="post" action="do.php">--%>
                                            <input  name="role" type="radio" value="employee" checked="checked">普通员工
                                            <input name="role" type="radio" value="admin">   管理员
                                            <input name="role" type="radio" value="manager">   部门经理
                                            <%--</form>--%>
                                        </li>

                                        <!--
                                        <li>
                                            <a href="#">Forgot password ?</a>
                                        </li>-->

                                    </ul>
                                </div><!--/.awesome-checkbox-list -->
                            </div><!--/.signin-password -->



                            <div class="signin-footer">
                                <button type="submit" class="btn signin_btn" data-toggle="modal" data-target=".signin_modal" id="login">
                                    sign in
                                </button>
                                <!--
                                <p>
                                    Don’t have an Account ?
                                     <a href="signup.html">register</a>
                                </p>   -->
                            </div><!--/.signin-footer -->

                        </div><!--/.sign-content -->


                    </div><!--/.single-sign -->
                </div><!--/.col -->
            <%--</form>--%>

        </div><!--/.row-->
    </div><!--/.container -->
</section><!--/.signin -->

<!-- signin end -->

<!--footer copyright start -->
<footer class="footer-copyright">
    <div id="scroll-Top">
        <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
    </div><!--/.scroll-Top-->

</footer><!--/.hm-footer-copyright-->
<!--footer copyright  end -->


<!-- Include all js compiled plugins (below), or include individual files as needed -->


<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>


</body>

</html>