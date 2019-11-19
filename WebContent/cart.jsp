<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="Cs/Style.css" rel="stylesheet" />
    <script src="Js/jquery-3.2.1.min.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Josefin+Sans|Lobster+Two|Pacifico');
    </style>
</head>
<body>
    <section>
        <!-- This is Section 1 of the page -->
        <div class="section1">
            <img src="Images/Website_Logo.png" class="logo" />
        </div>
        <!-- This is section 2 of the page -->
        <div class="section2">
            <input type="text" placeholder="search" class="txtsrch" /><button type="button" class="btnsrch">Search</button>

            <img src="Images/if_call_322424.png" class="call-icon" />
            <span class="tel-no">800-8600-9662</span>


            <nav>
                <a class="menuitem" href="${pageContext.request.contextPath}/HomeServlet" >Home</a>
                <a class="menuitem">Wish list(0)</a>
                <a class="menuitem">My Account</a>
                <a class="menuitem">Shopping Cart</a>
                <a class="menuitem">Checkout</a>
                <a class="menuitem">items(s)</a>
            </nav>
        </div>
    </section>
    <br>
    <div style="margin-top: 20%;">
	
		<div align="center">
			<ul>
				 <c:if test="${empty loginedUser}">
					<a href="${pageContext.request.contextPath}/login">Login</a>
				</c:if>
				<c:if test="${not empty loginedUser}">
				<span style="color:red">[ ${loginedUser.username} ]</span>
				<a href="${pageContext.request.contextPath}/logout">Logout</a>
				</c:if>
			</ul>
		</div>
		<div>
			<h4>My Cart</h4>
			<h4>My Information</h4>
		</div>
		<form action="${pageContext.request.contextPath}/Cart">
			<div>
			<table>
				<th>#</th>
				<th>Product</th>
				<th>Name Product</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>&nbsp; &nbsp; &nbsp;Action</th>
				
				<c:forEach items="${order.items}" var="item">
				
				<tr>
					<td><c:out value="${item.pro.id}"></c:out></td>
					<td><img height="200" width="400" src='<c:url value="${item.pro.image}"></c:url>'></td>
					<td><c:out value="${item.pro.name}"></c:out></td>
					<td> &nbsp; &nbsp;<c:out value="${item.price}"></c:out>
					<td> &nbsp; <c:out value="${item.quantity}"></c:out></td>
					<td>
						&nbsp; &nbsp;<button>Delete</button>
					</td>
				</tr>	
				</c:forEach>
				<tr>
				<th>
				<th>
				<th>
				<th>
				<th>Total Money : <c:out value="${order.total_money}"></c:out>
				<th><button type="submit" autofocus="autofocus" formmethod="post" style="float:right; height: 50px; width: 100px;"> CheckOut </button></th>
				</tr>
			</table>
			
		</div>
		</form>
		
	</div>
    


    <div class="background"></div>
</body>
</html>