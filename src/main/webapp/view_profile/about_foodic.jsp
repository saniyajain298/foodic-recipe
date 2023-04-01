<section w-100>
    <div class="container w-100">
        <div class="row align-self-center ">
            <div class="col-lg-4 bg-light m-2 shadow">
                <!-- <div class="profile_img text-center">
					<img class="rounded-circle shadow" src="images/upload_profile/IMG_20210816_154120.jpg"  >
					
				</div> -->
                <div class="dropdown">
                    <button type="button" class="btn rounded-circle dropdown-toggle" data-bs-toggle="dropdown">
                        <div class="profile_img text-center">
                            <img class="rounded-circle shadow" id="profile_image"
                                src="images/upload_profile/IMG_20210816_154120.jpg">
                        </div>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item">
                                <span class="btn-profile">
                                    Edit Profile <input type="file" id="input-profile" name="profile-image">
                                </span>
                            </a></li>
                        <li><a class="dropdown-item" href="path/to/image.jpg" target="_blank"
                                id="profile_image_view">View Profile</a></li>

                    </ul>
                </div>
                <h3><label>Personal info</label></h3>
                <div>
                    <label>Username</label>
                    <div class="d-flex justify-content-between" id="username">
                        <input type="text" value="SaniyaJain@29" id="input-username" class="edit_detail" readonly>
                    </div>


                    <label>Name</label>
                    <div class="d-flex justify-content-between" id="name">
                        <input type="text" value="Saniya Jain" id="input-name" class="edit_detail pointer" readonly>
                        <span id="icon-name"><i class="fas fa-pen" onclick="edit_icon_click('name')"></i></span>
                    </div>


                    <label>Bio</label>
                    <div class="d-flex justify-content-between" id="about">
                        <textarea id="input-about" class="edit_detail pointer" readonly></textarea>
                        <span id="icon-about"><i class="fas fa-pen" onclick="edit_icon_click('about')"></i></span>
                    </div>

                    <label>Gender</label>
                    <div class="d-flex justify-content-between" id="gender">
                        <input type="text" id="input-gender" class="edit_detail pointer" readonly>
                        <span id="icon-gender"><i class="fas fa-pen" onclick="edit_icon_click('gender')"></i></span>
                    </div>


                    <label>Date of Birth</label>
                    <div class="d-flex justify-content-between" id="dob">
                        <input type="date" id="input-dob" class="edit_detail pointer" readonly>
                        <span id="icon-dob"><i class="fas fa-pen" onclick="edit_icon_click('dob')"></i></span>
                    </div>

                    <br>
                </div>
                <h3><label>Contact</label></h3>
                <div>
                    <label>Phone</label>
                    <div class="d-flex justify-content-between" id="mobile">
                        <input type="number" id="input-mobile" class="edit_detail pointer" readonly>
                        <span id="icon-mobile"><i class="fas fa-pen" onclick="edit_icon_click('mobile')"></i></span>
                    </div>

                    <label>Email</label>
                    <div class="d-flex justify-content-between" id="email">
                        <input type="email" value="jsaniya298@gmail.com" id="input-email" class="edit_detail pointer"
                            readonly>
                        <span id="icon-email"><i class="fas fa-pen" onclick="edit_icon_click('email')"></i></span>
                    </div>
                    <label>Location</label>
                    <div class="d-flex justify-content-between" id="location">
                        <input type="text" value="Gwalior" id="input-location" class="edit_detail pointer" readonly>
                        <span id="icon-location"><i class="fas fa-pen" onclick="edit_icon_click('location')"></i></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 bg-light m-1 shadow">
                <h3 class="text-center"><label> Recipe Post</label></h3>
               
                	<div class="row alignment">
	                    <div class="card shadow col-md-4">
							<a href="create_recipe.jsp">
	                            <img src="images/recipe_upload.jpg" class="card-img-top" alt="...">
	                            <div>
	                                <button class="btn fw-bold btn-primary fs-5 rounded-circle float-end">+</button>
	                            </div>
	                            <div class="text-center">
	                                Create Recipe
	                            </div>
	                       	</a>     
	                    </div>
	                    <div class="card shadow col-md-4" >
	                        <img src="upload_image/pav_bhaji_main.jpg" alt="...">
	                        <small class="position-relative bottom-0 float-end">July 20, 2023</small>
	                        <h6 class="mt-1">Indian Food</h6>
	                        <small><a href="#">#food #indian</a></small>
	                        
	                        <small>6 ingredients</small>
	                        <small class="info m-1"><span class="rating" style="background-color:green; color:white;">&nbsp;&#9734; 5&nbsp;</span> 2/5 Ratings</small><br>

	                    </div>
	                     <div class="card shadow col-md-4" >
	                        <img src="upload_image/pav_bhaji_main.jpg" alt="...">
	                        <small class="position-relative bottom-0 float-end">July 20, 2023</small>
	                        <h6 class="mt-1">Indian Food</h6>
	                        <small><a href="#">#food #indian</a></small>
	                        
	                        <small>6 ingredients</small>
	                        <small class="info m-1"><span class="rating" style="background-color:green; color:white;">&nbsp;&#9734; 5&nbsp;</span> 2/5 Ratings</small><br>

	                    </div>
	
	                    <div class="card shadow col-md-4">
	                        <img src="images/uplaod_blog/gulab-jamun.png" alt="...">
	                        <div class="card-body overflow-hidden">
	                            <h6 class="card-title">Gulab Jamun</h6>
	                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
	                                of the card's content.</p>
	                        </div>
	                        <div class="card-footer">
	                            <a href="#" class="btn btn-primary form-control">View</a>
	                        </div>
	                    </div>
	                </div>
                

                <br>

                <h3 class="text-center"><label> Blog Post</label></h3>
                <div class="row alignment">
                	  <div class="card shadow col-md-4">
							<a href="create_blog.jsp">
	                            <img src="images/recipe_upload.jpg" class="card-img-top" alt="...">
	                            <div>
	                                <button class="btn fw-bold btn-primary fs-5 rounded-circle float-end">+</button>
	                            </div>
	                            <div class="text-center">
	                                Create Blog
	                            </div>
	                       	</a>     
	                    </div>
                
                 <div class="card shadow col-md-4" >
	              	<img src="images/uplaod_blog/jalebi.jpg" alt="...">
	              	<small class="position-relative bottom-0 float-end">July 20, 2023</small>
	              	<h6 class="mt-1">Indian Food</h6>
	       			<p>Lorem ipsum dolotium aenean aliquam.Non nunc
                            Lore.<a href="#">read more</a></p>
	            </div>
                <div class="card shadow col-md-4" >
	              	<img src="images/uplaod_blog/jalebi.jpg" alt="...">
	              	<small class="position-relative bottom-0 float-end">July 20, 2023</small>
	              	<h6 class="mt-1">Indian Food</h6>
	       			<p>Lorem ipsum dolotium aenean aliquam.Non nunc
                            Lore.<a href="#">read more</a></p>
	            </div>
            </div>

        </div>
    </div>

</section>

<!-- The Modal -->
<div class="modal fade" id="modal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Crop profile</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="img-container">
                    <div class="row">
                        <div class="col-md-8">
                            <img id="model-image">
                        </div>
                        <div class="col-md-4">
                            <div class="preview"></div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="crop">Crop</button>

            </div>

        </div>
    </div>
</div>


<!-- view profile model  -->