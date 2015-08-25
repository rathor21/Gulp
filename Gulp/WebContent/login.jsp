<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Example of Bootstrap 3 Vertical Form Layout</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
<style type="text/css">
    .bs-example{
    	margin-top: 10%;
    	margin-left: 40%;
    	margin-right: 20%;
    	marfin-bottom: 40%;
    }
</style>
</head>
<body>

<div class="bs-example">
    <!-- <form role = "form" action="Restaurant" method="post"> -->
    <form role="form"  action="Restaurant" method="post">
    	<h3>Please Login</h3>
        <div class="form-group" style="width:30%">
            <label for="inputEmail">Email</label>
            <input type="email" class="form-control" name="inputEmail" placeholder="Email">
        </div>
        <div class="form-group" style="width:30%">
            <label for="inputPassword">Password</label>
            <input type="password" class="form-control" name="inputPassword" placeholder="Password">
        </div>
        <div class="checkbox">
            <label><input type="checkbox"> Remember me</label>
        </div>
   
		<div class="col-lg-6">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary btn-lg" name = "button" type="submit">Login</button>

				</span>
			</div>
    	</form>
    	    
        <a class="btn btn-primary btn-lg" style=margin-top:20px "button" href="userprofile.jsp">New User</a>
    
</div>
</body>
</html>    