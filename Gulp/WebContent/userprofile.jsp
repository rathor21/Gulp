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

<title>User Profile</title>
</head>
<body>

<div class="container">
		<div class="jumbotron">
			<h1>User Profile</h1>
			<p>Enter profile info.</p>
		</div>

	</div>
	<form role="form"  action="UserProfile" method="post">

		<div class="col-lg-6">
			<div class="input-group">
				<input type="text" class="form-control" name = "name" placeholder="Name">
				<br>
				<input type="text" class="form-control" name = "email" placeholder="Email">
				<br>
				<input type="text" class="form-control" name = "zipcode" placeholder="Zipcode">
				<br>
				<p></p>
				<span class="input-group-btn">
					<button class="btn btn-default" name = "button" type="submit">Submit</button>

				</span>
			</div>
			<!-- /input-group -->
		</div>
	</form>


</body>
</html>