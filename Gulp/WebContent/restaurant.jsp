<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type=text/css href="custom.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="/path/to/jquery.js"></script>
<script type="text/javascript" src="/path/to/moment.js"></script>
<script type="text/javascript" src="/path/to/bootstrap/js/transition.js"></script>
<script type="text/javascript" src="/path/to/bootstrap/js/collapse.js"></script>
<script type="text/javascript"
	src="/path/to/bootstrap/dist/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/path/to/bootstrap-datetimepicker.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Res List</title>

</head>
<body>

<div> 	${message1}
</div>

<div>
	${message2}
</div>
<form role="form"  action="login.jsp" >
<div class="col-lg-6">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary btn-lg" name = "logout" type="submit">Logout</button>

				</span>
			</div>
</div></form>

<form role="form"  action="UserProfile" method="get">
<div class="col-lg-6">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary btn-lg" style=margin-top:20 name = "Profile" type="submit">Profile</button>

				</span>
			</div>
</div>
</form>

<form role="form"  action="editRest.jsp" method="post">
<div class="col-lg-6">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary btn-lg" style=margin-top:20 name = "edit_rest" type="submit">Edit Rest</button>

				</span>
			</div>
</div>
</form>

<form role="form"  action="RestChange" method="get">
<div class="col-lg-6">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary btn-lg" style=margin-top:20 name = "edit_profile" type="submit">edit Profile</button>

				</span>
			</div>
			</div>
</form>
			
<form role="form"  action="updateProfile" method="get">
			
<div class="col-lg-6">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary btn-lg" style=margin-top:20 name ="restaurants" type="submit">Restaurants</button>
			
				</span>
			</div>
</div>
</form>
</body>
</html>