<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- <meta charset="ISO-8859-1">
		 --><title>Insert title here</title>
		
		<!-- links -->
		<link rel="stylesheet" href="css/rating.css">	
		<link rel="stylesheet" href="css/all_recipes.css">
		<link rel="stylesheet" href="assets/head-links.jsp">
		<jsp:include page="assets\head-links.jsp"></jsp:include>    	
	</head>
	
	<body>
		<jsp:include page="common/header.jsp"></jsp:include>
		<jsp:include page="all_recipe/img_slider.jsp"></jsp:include>
		<jsp:include page="all_recipe/all_content.jsp"></jsp:include>
		<jsp:include page="common/footer.jsp"></jsp:include>
		<jsp:include page="js/all_recipe/all_recipe.jsp"></jsp:include>
		<jsp:include page="js/all_recipe/rating.jsp"></jsp:include>
		<jsp:include page="js/recipe_comment.jsp"></jsp:include>
	<!-- bundle cdn -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	</body>
</html>