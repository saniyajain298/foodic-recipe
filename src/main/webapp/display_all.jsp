<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta content="width=device-width, initial-scale=1" name="viewport" />
		<title>Insert title here</title>
		<jsp:include page="css/css_links.jsp"></jsp:include>
		<link href="css/display_all.css" rel="stylesheet">
		
		<jsp:include page="assets\head-links.jsp"></jsp:include>  
	</head>
	<body>
		<jsp:include page="common/header.jsp"></jsp:include>
		<jsp:include page="display_all/content.jsp"></jsp:include>
		<jsp:include page="common/footer.jsp"></jsp:include>
		<script src="js/display_all.js"></script>
		<!-- bundle cdn -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
		
	</body>
</html>