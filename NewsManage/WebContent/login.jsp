<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% HttpSession s = request.getSession(); %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INNER LOGIN</title>
</head>
<body>
	<%if(!(s.getAttribute("msg")==null)){%>
	<%= s.getAttribute("msg") %>
	<%} s.removeAttribute("msg");%>

	<form name="f1" action="http://localhost:8080/NewsManage/InnerLogin" method="POST">
	用户:<input type="text" name="id"><br/>
	密码:<input type="password" name="pass"><br/>
	<input type="submit" value="login" ">
	</form>

</body>
</html>