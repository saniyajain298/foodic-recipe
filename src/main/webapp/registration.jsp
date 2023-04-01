<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- <input type="text" id="status" value= "<%= request.getAttribute("status") %>" > --%>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form" onsubmit="password_check()" id="register-form">
							<div class="form-group">
								<label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label> 
								<input type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<input type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label>
								<input type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact" placeholder="Contact no" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term" class="agree-term" /> 
								<label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in 
								<a href="#" class="term-service">Terms of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="js/main.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
 	var status =  document.getElementById("status").value;
	
	if(status == "success"){
		console.log(status);
		Swal.fire({
			  title: 'Login Successfully',
			  showClass: {
			    popup: 'animate__animated animate__fadeInDown'
			  },
			  hideClass: {
			    popup: 'animate__animated animate__fadeOutUp'
			  }
			})
	}
	else if(status == "error"){
		Swal.fire({
			  icon: 'error',
			  title: 'Oops...',
			  text: 'Error Occur Do it again!',
			})
	} 
	function password_check(){
		var pass = document.getElementById("pass").value;
		var re_pass = document.getElementById("re_pass").value;
		if(pass === re_pass){
			
			if(strong_pass(pass)){
				
				return true;
			} 
			else{
				Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Week pasword!',
					})
				return false;
			} 
			return false;
		} 
		else{
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Password not matched!',
				})
			return false;
		}
		
	}
	
	function strong_pass(pass){
		 const specialChars = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
		 return specialChars.test(pass);
	}
	

</script>


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>