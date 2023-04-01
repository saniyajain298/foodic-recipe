<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Foodic</title>
	<jsp:include page="assets/head-links.jsp"></jsp:include>
	<link href="css/view_blog.css" rel="stylesheet"/>
</head>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="blog-image"><img id="blog-image" alt="image" ></div>
					<div class="m-3">
						<h1 class="title"></h1>
					</div>
					<div class="m-3">
						<p class="content"></p>
					</div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
	
	</section>
	<jsp:include page="common/footer.jsp"></jsp:include>
	<jsp:include page="js/blog_detail.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
</body>
</html>