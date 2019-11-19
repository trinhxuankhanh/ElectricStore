<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Style CSS -->
    <link rel="stylesheet" href="Cs/spa.css">
  </head>
  <body>
    <div class="container">
      <div id="header" class="row">
        <div class="col">
          <h3 class="text-center">My Web</h3>
        </div>
      </div>

      <div id="main" class="row">

        <!-- LEFT AREA -->
        <div class="col-7">
          <div class="row">
            <div class="col">
              <input type="text" class="form-control" placeholder="Search by name ...">
            </div>
            <div class="col">
              <button type="button" class="btn btn-success">
                <i class="fa fa-plus"></i> Search
              </button>
            </div>
          </div>

          <div class="row">
            <div class="col">
              <h5 id="list-heading">List of product</h5>
              <table class="table table-bordered table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Discription</th>
                    <th>Categories</th>
                    <th>Producer</th>
                    <th>Default price</th>
                    <th>Promotion price</th>
                    <th>Image</th>
                    <th>Date</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="pro" items="${list}">
                  	<tr>
                  		<th> <c:out value="${pro.id}"></c:out> </th>
                  		<th> <c:out value="${pro.name}"></c:out></th>
                  		<th> <c:out value="${pro.discription}"></c:out></th>
                  		<th> <c:out value="${pro.categories}"></c:out></th>
                  		<th> <c:out value="${pro.producer}"></c:out></th>
                  		<th> <c:out value="${pro.default_price}"></c:out></th>
                  		<th> <c:out value="${pro.promotion_price}"></c:out></th>
                  		<th> <img src='<c:url value="${pro.image}" ></c:url>' height="100" width="150"> </th>
                  		<th> <c:out value="${pro.date}"></c:out></th>
                  		<th> <a class="btn btn-primary" href="${pageContext.request.contextPath}/Update?id=<c:out value="${pro.id}"/>"><i class="fa fa-floppy-o"></i> Update</a>
                			 <br>
              				 <br>
              				 <a class="btn btn-danger" href="${pageContext.request.contextPath}/Delete?id=<c:out value="${pro.id}"/>"><i class="fa fa-floppy-o"></i>Delete</a>

              			</th>
                  	</tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>

        <!-- RIGHT AREA -->
        <div>
          

          <div class="form-group row" align="right">
            <div class="col-10 offset-2">
              <center><a href="${pageContext.request.contextPath}/Addproduct"><button type="submit" class="btn btn-primary"><i class="fa fa-floppy-o"></i>Add</button></a></center>
              <br>
              <br>
              
            </div>
          </div>
        </div>

      </div><!-- END row -->
    </div><!-- END container -->
    
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
  </body>
</html>