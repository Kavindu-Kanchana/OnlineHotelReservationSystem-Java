<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/et-icons.css">
	
    <title>Hotel ABC</title>
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
	
    <!-- Carousel section -->
    <section style="padding:80px 0px;">
		<div class="container col-lg-5">
		  <form action="insertPromo" method="post" class="px-4 py-3" enctype = "multipart/form-data">
		    <div class="form-group py-3">
		     <h4>Create Promotion</h4>
		    </div>
		    <div class="form-group">
		      <label for="pCode">Promo Code</label>
		      <input type="text" id="pCode" class="form-control" name="pCode" size="10" pattern="[a-zA-Z0-9-]+" value="${capture[0]}" required placeholder="a-z , A-Z , 0-9">
		      <p style="color:red;">${alreadyExist} </p>
		      <label for="name">Name</label>
		      <input type="text" class="form-control" id="name" name="name" value="${capture[1]}" required>
		      <br>
		      <label for="description">Description</label>
		      <textarea class="form-control" id="description" name="description"  required>${capture[2]}</textarea>
		      <br>
		      <label for="amount">Amount in %</label>
		      <input type="text" class="form-control" id="amount" name="amount" pattern="[0-9]{1,2}"  value="${capture[3]}" required placeholder="xx">
		      <br>
		      <label for="pbanner">Banner image</label><br>
		      <input class="form-control" type="file" id="file" name="file">
		    </div>
		    <br>
		    <input id="submit-btn" class="btn btn-success" type="submit" name="submit" value="Create">
		  </form>
		  </div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- temporary <script src="js/index.js"></script> -->
  </body>
</html>
