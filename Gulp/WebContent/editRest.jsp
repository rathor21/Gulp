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

<title>edit Restaurant</title>
<style type="text/css">
    .bs-example{
    	margin-top: 10%;
    	margin-left: 40%;
      }
</style>
</head>
<body>
	<form action=RestChange method="post" class="bs-example">
	
        
        <select name="rest_name">
				<option value="#" selected>Restaurant</option>
				<option value="Applebees">Applebees</option>
				<option value="Buffalo Wild Wings">Buffalo Wild Wings</option>
				<option value="Cheesecake Factory">Cheesecake Factory</option>
				<option value="McDonalds">McDonalds</option>
				<option value="Millers Ale House"> Millers Ale House</option>
			</select>
	<div class="form-group" style="width:30%">
            <label for="description">Description</label>
            <input type="textarea" class="form-control" name="description" placeholder="Change Description">
        </div>
	<div class="form-group" style="width:30%">
            <label for="address">Address</label>
            <input type="textarea" class="form-control" name="address" placeholder="Change Address">
        </div>
	<button type="submit" class="btn btn-primary" name="submit">Submit</button>
	
	</form>
</body>
</html>