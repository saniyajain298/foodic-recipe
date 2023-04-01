<nav class="navbar navbar-expand-lg navbar-light sticky-top">
	<div class="container-fluid ">
		<a class="navbar-brand btn" href="index.jsp">Foodic</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 header">
				<li class="nav-item">
					<a class="nav-link h6 dashboard-header" aria-current="page" href="index.jsp">Dashboard</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h6 view-recipe-header" aria-current="page" href="display_all.jsp">View Recipe</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h6 view-blog-header" aria-current="page" href="all_blog.jsp">View Blog</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h6 about-us-header" href="#">About Us</a>
				</li>
				<li class="nav-item">
					<a class="nav-link h6 logout-header" href="logout">Logout</a>
				</li>
			</ul>
			<span class="navbar-text">
				<a class="nav-link btn btn-outline-warning mx-3" type= "button" href="view_profile.jsp"><%= session.getAttribute("name") %></a>
			</span>
		</div>
		
	</div>
	
</nav>
