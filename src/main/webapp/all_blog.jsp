<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Foodic</title>
        <link href="css/all_blog.css" rel="stylesheet">
   		<jsp:include page="assets/head-links.jsp"></jsp:include>
   		
   		<style>
   			a.nav-link.h6.view-blog-header{
			font-weight: 700;
			color: #ffc107;
		}
		a.nav-link.h6.view-blog-header:hover {
			color: #ffc107;
		}
   		</style>
    </head>

    <body>
        <jsp:include page="common/header.jsp"></jsp:include>
        <div class="text-center ">
         	<h3>Foodic's Blogs</h3>
        </div>
        <div class="mt-3 p-4 blogs">
            <div class="container align-content-center">
                
                <div id="show-cards" class="row">
                    
                </div>
            </div>
        </div>
        <br><br>

        <jsp:include page="common/footer.jsp"></jsp:include>
        <jsp:include page="js/view_blog.jsp"></jsp:include>
        
     <!-- bundle cdn -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
       
    </body>

    </html>