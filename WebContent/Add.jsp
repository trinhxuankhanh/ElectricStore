<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin</title>

  <!-- Custom fonts for this template-->
  <link href="Cs/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="Cs/sb-admin.css" rel="stylesheet">
</head>
<div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">New Product</div>
      <div class="card-body">
      		<form action="${pageContext.request.contextPath}/add">
          <div class="form-group">
            <div class="form-row">
         		<div>
         		<label >Name Product</label>
         		<input type="text"  name="name" class="form-control" placeholder="Name Product" required="required" value='<c:out value="${product.name}"></c:out>'>
         		</div>
         		&nbsp; &nbsp;
         		<div>
         		<label >Discription Product</label>
         		<input type="text"  name="discription" class="form-control" placeholder="Discription Product" required="required" value='<c:out value="${product.discription}"></c:out>'>
         		</div>
         		&nbsp; &nbsp;
         		<div>
         		<label >Categories Product</label>
  					<input list="browsers1" name="categories" class="form-control" value='<c:out value="${product.categories}"></c:out>'>
  					<datalist id="browsers1">
    					<c:forEach var="producer" items="${list}">
    						<option value='<c:out value="${producer.categories}"></c:out>'>
    					</c:forEach>
  					</datalist>
         		</div>
         		&nbsp; &nbsp;
         		<div>
         		<label >Producer Product</label>
  					<input list="browsers" name="producer" class="form-control" value='<c:out value="${product.producer}"></c:out>' >
  					<datalist id="browsers">
    					<c:forEach var="pro" items="${lis}">
    						<option value='<c:out value="${pro.producer}"></c:out>'>
    					</c:forEach>
  					</datalist>
         		</div>
         		&nbsp; &nbsp; 
         		<div>
         		<label >Default price Product</label>
         		<input type="text" name="defaultprice" class="form-control" placeholder="Default price Product" required="required" value='<c:out value="${product.default_price}"></c:out>'>
         		</div>
         		&nbsp; &nbsp;
         		<div>
         		<label >Promotion price Product</label>
         		<input type="text" name="promotionprice" class="form-control" placeholder="Promotion price Product" required="required" value='<c:out value="${product.promotion_price}"></c:out>'>
         		</div>
         		&nbsp; &nbsp;
         		<div>
         		<label >Image Product</label>
         		<input type="text" name="image" class="form-control" placeholder="Image Product" required="required" value='<c:out value="${product.image}"></c:out>'>
         		</div>
         		&nbsp; &nbsp;
         		<div>
         		<label >Date Up Product</label>
         		<input type="date" name="date" class="form-control" required="Date Up Product" value='<c:out value="${product.date}"></c:out>'>
         		</div>
            </div>
          </div>
          <input type="submit" class="btn btn-primary btn-block" value="Save">
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="${pageContext.request.contextPath}/login">Login Page</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="Js/jquery.min.js"></script>
  <script src="Js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="Js/jquery.easing.min.js"></script>

</body>
</html>