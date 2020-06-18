<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="description" content="人力资源管理平台" />
        <title>人力资源管理平台</title>
        <link type="text/css" rel="stylesheet" href="css1/css.css" />
        <script type="text/javascript" src="jquery-1.7.min.js"></script>
	</head>
	<body>
     
    <div class="header">
       <div class="top"> <img class="logo" src="img1/logo.jpg" />
          <ul class="nav">
           <li class="seleli"><a href="#">首页</a></li>
           <li><a href="personalInfo.jsp">个人信息</a></li>
           <li><a href="salary.jsp">工资查询</a></li>
          </ul>
        </div>
    </div>
     
  <script>
      $(".top ul").on("click","li",function(){
          $(".left ul li").removeClass("seleli");
          $(this).addClass("seleli");
      });
  </script>
	</body>
</html>
