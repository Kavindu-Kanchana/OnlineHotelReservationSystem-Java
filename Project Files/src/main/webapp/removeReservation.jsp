<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Bootstrap CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="css/reservationStyle.css" />
        <link rel="stylesheet" href="css/et-icons.css" />

        <title>Remove Reservations</title>
    </head>

    <body>
    
     <%
		//allow access only if session exists
		if(session.getAttribute("usrDetails") == null){
			response.sendRedirect("login.jsp");
		}
   %>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
    	<a class="navbar-brand" href="adminView.jsp"><img src="img/logo.png" width=150px></a>
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
    	</button>
	    <div class="collapse navbar-collapse" id="navbarNav">
	    	<ul class="navbar-nav ms-auto">
	        	<li class="nav-item">
	         		 <a class="nav-link" href="package">Packages</a>
	        	</li>
	        	<li class="nav-item">
	         		 <a class="nav-link" href="table">Reservations</a>
	        	</li>
	        	<li class="nav-item">
	         		 <a class="nav-link" href="UserManagement">Users</a>
	        	</li>
	        	<li class="nav-item">
	        		 <a class="nav-link" href="displayPromo">Promotions</a>
	       	 	</li>
	       	 	</ul>
	       	 	<ul class="navbar-nav">
			        <li class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			           <img alt="" src="img/default.png" width=25px height=auto>
			          </a>
			          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
			            <li><a class="dropdown-item" href="out">Log out</a></li>
			            <li><a class="dropdown-item" href="userProfileEdit.jsp">Profile</a></li>
			          </ul>
			        </li>
			      </ul>
	    </div>
    </div>
	</nav>


        <!-- main body -->
        <section>

            <h1>Remove Reservations</h1>
            <hr>
            <br><br>

            <!-- remove reservation -->
            <div style="padding-left: 100px; max-width: 600px;">
                
                    <br><br>
                    <div style="padding-left: 100px; max-width: 600px;">
                        <form action="table" method="post">
                            <div class="mb-3">
                                <label class="form-label">Reservation ID</label>
                                <input type="text" pattern="[0-9]*" class="form-control" name="resID" required>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-danger">Remove Reservation</button>
                        </form><br><br>
                    </div>
               <br><br>
            </div>
            <hr>
            <br><br>

            <!-- reservations table -->
            <section>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Reservation ID</th>
                        <th scope="col">Room ID</th>
                        <th scope="col">User ID</th>
                        <th scope="col">Package ID</th>
                        <th scope="col">Stay Length</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${resList}" var="res">
                        <tr>
                                <td>${res.resID}</td>
                                <td>${res.roomID}</td>
                                <td>${res.userID}</td>
                                <td>${res.packageID}</td>
                                <td>${res.stayLenght}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
        </section>

        </section>


        <!-- Footer -->
	<footer class="text-center py-5 bg-dark text-white">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<p class="mb-0 py-3">Created by ABC Hotel</p>
				</div>
			</div>
		</div>
	</footer>

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
