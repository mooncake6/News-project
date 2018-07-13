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
					<li class="active"><a href="index.jsp">首页</a></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle">新闻管理<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="newsPublish.jsp">发布</a></li>
							<li><a href="newsAmend.jsp">修改</a></li>
						</ul></li>
					<li><a href="#">其他</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">帐号管理<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">新建帐号</a></li>
							<li><a href="#">修改帐号</a></li>
						</ul></li>
				</ul>
				<form class="form-horizontal" action="http://localhost:8080/NewsManage/NewsSearch" method="post">
					<div class="control-group">
						<label class="control-label" for="author">作者</label>
						<div class="controls">
							<input id="author" type="text" name="author"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="typeId">种类</label>
						<div class="controls">
							<input id="typeId" type="text" name="typeId"/>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="newsDate">日期</label>
						<div class="controls">
							<input id="newsDate" type="date" name="newsDate"/>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn">查询</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
