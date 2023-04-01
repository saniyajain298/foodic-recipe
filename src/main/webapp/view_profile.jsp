<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Foodic- View profile</title>
		
	<link href="css/view_profile.css" rel="stylesheet" >
	<jsp:include page="assets\head-links.jsp"></jsp:include> 
</head>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<jsp:include page="view_profile/about_foodic.jsp"></jsp:include>
	<jsp:include page="common/footer.jsp"></jsp:include>
	<jsp:include page="js/view_profile/personal_detail.jsp"></jsp:include>
	<jsp:include page="js/view_profile/profile.jsp"></jsp:include>
	<jsp:include page="js/view_profile/recipes.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="js/cropper/cropper.min.js" type="text/javascript"></script>
</body>
</html>