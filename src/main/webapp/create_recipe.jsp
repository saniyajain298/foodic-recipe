<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<jsp:include page="assets/head-links.jsp"></jsp:include> 
	</head>
	<link rel="stylesheet" href="css/create_recipe.css" >
	<body>
		
		<jsp:include page="common/header.jsp"></jsp:include>
		<jsp:include page="create_recipe/other_fields.jsp"></jsp:include>
		<jsp:include page="create_recipe/insert_image.jsp"></jsp:include>
		<jsp:include page="common/footer.jsp"></jsp:include>
			
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="js/cropper/cropper.min.js" type="text/javascript"></script>
		<script src="js/create_recipe.js" type="text/javascript"></script>
		<!-- bundle cdn -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		
	</body>
</html>