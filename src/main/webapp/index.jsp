<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foodic</title>
<link href="css/index.css" rel="stylesheet" >
<link href="css/all_blog.css" rel="stylesheet">
<jsp:include page="assets/head-links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<jsp:include page="index_pages/slider.jsp"></jsp:include>
	<jsp:include page="index_pages/image_icon.jsp"></jsp:include>
	<jsp:include page="index_pages/blogs.jsp"></jsp:include>
	<jsp:include page="index_pages/food_contant.jsp"></jsp:include>
	<jsp:include page="common/footer.jsp"></jsp:include>
	<jsp:include page="js/view_blog.jsp"></jsp:include> 
	
<!-- bundle cdn -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>