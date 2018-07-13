<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>GLOBAL NEWS</title>
<link type="text/css" rel="styleSheet" href="css/style.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<ul class="nav nav-pills">
					<li><a href="index.jsp">首页</a></li>
					<li class="dropdown active"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">新闻管理<strong
							class="caret"></strong></a>
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
				<div class="hero-unit">
				<h2>新闻发布</h2>
					<form name="pushnews"
						action="http://localhost:8080/NewsManage/NewsPublish"
						method="post" accept-charset="Cp932">
						<%
							HttpSession s = request.getSession();
							if (!(s.getAttribute("msg") == null)) {
						%>
						<%=s.getAttribute("msg")%>
						<%
							}
						%>
						标题：<input type="text" name="title"><br> 
						作者：<input type="text" name="author"><br> 
						类型：<input type="text" name="typeId"><br>
						日期：<input type="date" name="date"><br>
						正文：<textarea name="context"
							style="width: 600px; height: 800px; vertical-align: top;"></textarea>
						<br> 
						<input type="button" value="提交" onclick="document.pushnews.submit()">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>