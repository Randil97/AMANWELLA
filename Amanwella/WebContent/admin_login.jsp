<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin_login.css" />
</head>
<body>
	<div class="login_form">
		<div class="container">
		<form method="post" action="login_sevlet">
			<div class="card">
				<div class="card-header">
					Login <br>
					<%
					
						String email = (String)session.getAttribute("email");
					
						if(email != null) {
							response.sendRedirect("admin.jsp");
						}
					
						String status = request.getParameter("status");
						if(status != null) {
							if(status.equals("false")) {
								out.println("Wrong Username or Password");
							}
							else if(status.equals("error")) {
								out.println("Some error occurs");
							}
						}
					%>
				</div>
				<div class="card-body">
					<div class="form-group">
						<input type="text" name="email" class="form-control" placeholder="Enter Email">
					</div>
					<div class="form-group">
						<input type="password" name="password" class="form-control" placeholder="Enter Password">
					</div>
				</div>
				<div class="card-footer">
					<input type="submit" value="Login" class="btn btn-primary">
				</div>
			</div>	
		</form>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>