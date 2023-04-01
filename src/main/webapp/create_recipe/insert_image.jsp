	<div class="container" >
		<div class="d-flex justify-content-end ">
			<button class="m-2 btn btn-warning shadow" type ="button" onclick="add()" >Add</button>
			<button class="m-2 btn btn-warning shadow" type ="button" onclick="remove()" >Remove</button>
		</div>
		<div class="row " id="all_pre" >
			<div class="col-md-3 pre0 " >
				<div class="preview" id ="preview0">
					 <img src="assets/img/all_default/create_recipe.png" >
				</div>
				<label for="0" class="img-label bg-warning">
					Upload Image <i class="fa fa-2x fa-camera"></i>
					<input type="file" name="image" id="0" class="image ">
				</label>
				<div id="croped_image1" ></div>
			</div>
		</div>
	</div>
	<div class='text-center mt-4' >
		<button class="btn btn-lg btn-info" type="submit" >Submit</button>
		
	</div>
</form >

 <!--Model -->
 
 
 <div class="modal fade" id="modal" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
  	<div class="modal-dialog modal-dialog-centered">
    	<div class="modal-content">
	      	<div class="modal-header">
	        	<h5 class="modal-title" id="exampleModalToggleLabel">Modal 1</h5>
	        	<button type="button" class="btn-close" data-bs-dismiss="modal" ></button>
	      	</div>
	      	<div class="modal-body">
	       		<div class="img-container">
	                <div class="row">
	                    <div class="col-md-8">  
	                		<img  id="image" class="imgcrop">
	                    </div>
	                </div>
	            </div>
	    	</div>
	    </div>	
  	</div>
</div>


