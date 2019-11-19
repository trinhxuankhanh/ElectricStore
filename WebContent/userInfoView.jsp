<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>User Info</title>
   </head>
   <body>
 
    	<form >
    		<div align="center" class="form-group" >
    			<div> 
    				<h2>Full Name : </h2>
    				<h3> <c:out value="${cus.fullname}"></c:out> </h3>
    			</div>
    			<div> 
    				<h2>Phone : </h2>
    				<h3> <c:out value="${cus.phone}"></c:out> </h3>
    			</div><div> 
    				<h2>Address : </h2>
    				<h3> <c:out value="${cus.address}"></c:out> </h3>
    			</div><div> 
    				<h2>Email : </h2>
    				<h3> <c:out value="${cus.email}"></c:out> </h3>
    			</div><div> 
    				<h2>Birth : </h2>
    				<h3> <c:out value="${cus.birthday}"></c:out> </h3>
    			</div>
    		</div>
    	
    	</form>
   </body>
</html>