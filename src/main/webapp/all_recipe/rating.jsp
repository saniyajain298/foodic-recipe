<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<section class="rating-section">
	<hr>
	<div class="container">
		
		<div class="row">
			<div class="col-md-6 shadow">
				<h1 class="h1">User Rating</h1>
				<span class="rating1 fa fa-star"onclick="setRating(1);"></span>
				<span class="rating1 fa fa-star"onclick="setRating(2);"></span>
				<span class="rating1 fa fa-star"onclick="setRating(3);"></span>
				<span class="rating1 fa fa-star" onclick="setRating(4);"></span>
				<span class="rating1 fa fa-star"onclick="setRating(5);"></span>
				<br><br>
				<p class="tRating"></p>
				<p class="fs-1 text-center mt-4 reaction"></p>
			</div>
			<div class="col-md-6 shadow">
				<div class="row">
					<div class="side">
						<div>5 star</div>
					</div>
					<div class="middle">
					    <div class="bar-container">
					      	<div class="bar-5" ></div>
					    </div>
					</div>
					<div class="side right">
					    <div>150</div>
					</div>
					<div class="side">
					    <div>4 star</div>
					</div>
					<div class="middle">
					    <div class="bar-container">
						    <div class="bar-4"></div>
					    </div>
					</div>
					<div class="side right">
					    <div>63</div>
					</div>
					<div class="side">
					    <div>3 star</div>
					</div>
					<div class="middle">
					    <div class="bar-container">
					    	<div class="bar-3"></div>
					    </div>
					</div>
					<div class="side right">
				    	<div>15</div>  
					</div>
					<div class="side">
					    <div>2 star</div>
					</div>
					<div class="middle">
					    <div class="bar-container">
							<div class="bar-2"></div>
					    </div>
					</div>
					<div class="side right">
					    <div>6</div>
					</div>
					<div class="side">
					    <div>1 star</div>
					</div>
					<div class="middle">
					    <div class="bar-container">
					      	<div class="bar-1"></div>
					    </div>
					</div>
					<div class="side right">
					    <div>20</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr>
</section>