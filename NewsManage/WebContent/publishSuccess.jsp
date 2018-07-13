<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="styleSheet" href="css/style.css" />
<title>Success</title>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<ul class="nav nav-pills">
					<li><a href="index.jsp">首页</a></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle">新闻管理<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="newsPublish.jsp">发布</a></li>
							<li><a href="#">修改</a></li>
						</ul></li>
					<li><a href="#">其他</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">帐号管理<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">新建帐号</a></li>
							<li><a href="#">修改权限</a></li>
						</ul></li>
				</ul>
				<div style="color:blue">News Publish Success!</div>
			</div>
		</div>
	</div>
</body>
</html>