<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link href="js/cropper/cropper.min.css" rel="stylesheet" type="text/css"/>
		<jsp:include page="assets/head-links.jsp"></jsp:include>  
		<style>
			td{
				background:#E4CDA7;
			}
		
		</style>
	</head>
	<body>
		<jsp:include page="common/header.jsp"></jsp:include>
		<jsp:include page="create_blog/create_blog.jsp"></jsp:include>
		<jsp:include page="common/footer.jsp"></jsp:include>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="js/cropper/cropper.min.js" type="text/javascript"></script>
</body>
</html>