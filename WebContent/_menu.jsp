<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="right">
			<a href="${pageContext.request.contextPath}/employeeTask">User Task</a>
			||
			<a href="${pageContext.request.contextPath}/managerTask">Manager Task</a>
			||
			<a href="${pageContext.request.contextPath}/userInfo">User Info</a>       
			||
			<a href="${pageContext.request.contextPath}/login">Login</a>
			||
			<a href="${pageContext.request.contextPath}/logout">Logout</a>
 
&nbsp;
<span style="color:red">[ ${loginedUser.username} ]</span>
	</div>
</body>
</html>