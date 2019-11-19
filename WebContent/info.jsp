<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
	<meta charset="UTF-8" />
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
                <a class="menuitem" >Home</a>
                <a class="menuitem">Wish list(0)</a>
                <a class="menuitem">My Account</a>
                <a class="menuitem">Shopping Cart</a>
                <a class="menuitem">Checkout</a>
                <a class="menuitem">items(s)</a>
            </nav>
        </div>
    </section>
    <br>
    <div style="float: left; margin-top: 20%; margin-left: 10%;">
        <img src='<c:url value="${product.image}"></c:url>'" height="300" width="400">
        <div style="float: right; padding-bottom: 20%; margin-left: -30px; font-size: 2.4em;">
            <h6> ID : <c:out value="${product.id}"></c:out> </h6> 
            <h5> Name : <c:out value="${product.name}"></c:out> </h5> 
            <h4> Price : <c:out value="${product.promotion_price}"></c:out> </h4>
            <h4> Details : <c:out value="${product.discription}"></c:out> </h4>
            <br>
            <button type="submit" value="Thanh Toán" style="height: 50px; width: 100px; background-color: aqua;">buy</button>
        </div>
    </div>
    


    <div class="background"></div>

</body>
</html>