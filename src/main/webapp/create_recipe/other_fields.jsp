<form method="post" action="create_recipe" enctype="multipart/form-data" onsubmit="return submit_recipe(); ">
<div class="container" >
	<h3 class="text-center" >Create New Recipe</h3>
	<div>
		<div class="row">
			
  			<input type="hidden" name="ing_count" id ="ing_count">
  			<input type="hidden" name="step_count" id ="step_count">
  			<div class="mb-3 col-12" >
				<div class="main_preview_div border border-warning mb-1 shadow">
					 <img id="main_preview" src="assets/img/all_default/create_recipe_bg.png">
					
				</div>
				<div class="mt-3" >
					<input type="file" id="main_image" name="main_image" required>
				</div>
  			</div>
  			<div class="mb-3 col-6">
			    <label for="exampleInputEmail1" class="form-label h6">Recipe Name</label>
				<input type="text" placeholder="Enter Your Recipe name" class="form-control" name="res_name" required >
			</div>
			
			<div class="mb-3 col-6">
				<label for="exampleInputEmail1" class="form-label h6">Hashtag</label>
			    <input type="text" placeholder="#" class="form-control" name="hashtags" required>
			</div>
  			<div class="mb-3 col-6">
   				<label for="exampleInputPassword1" class="form-label h6">About Recipe</label>
    			<textarea class="form-control" placeholder="Write something about your recipe..." name="res_about" required></textarea>
    			<div class="form-text">In max 50 words</div>
  			</div>
  			<div class="mb-3 col-6">
    			<label for="exampleInputPassword1" class="form-label h6">Precaution for Recipe</label>
    			<textarea class="form-control" placeholder="Write precautions required for recipe..." name="res_precaution"></textarea>

  			</div>
  		</div>
  				
  				<!-- Ingredients in recipe -->
		<div class="row" >
			<label for="exampleInputPassword1" class="form-label h6">Ingredients</label>
			<div class="input-group mb-3 " id="div-00">
  				<div class="input-group-prepend">
  					<input type="text" class="form-control" name="ing" placeholder="Name" required>
  				</div>
  				<input type="text" class="form-control" name="qty" placeholder="Quantity" required>
  				<button type="button" onclick="add_ing('00')" class="btn btn-warning shadow ml-1" >+</button>
  				<button type="button" onclick="remove_ing('00')" class="btn btn-warning shadow" >-</button>
			</div>
		</div>	
			<!-- Steps to create recipe -->
		<div class="row" >
			<label for="exampleInputPassword1" class="form-label h6">Step to make recipe</label>
			<div class="input-group mb-3 " id="s-0">
  				<textarea class="form-control" name="step" placeholder="Step..." required></textarea>
  				<button  type="button" onclick="add_step('s-0')" class="btn btn-warning shadow" >+</button>
  				<button type="button"  onclick="remove_step('s-0')" class="btn btn-warning shadow" >-</button>
			</div>
		</div>	
		<div>
			<input type = "hidden" name = "img" id ="img_value">
		</div>
	</div>
</div>
<script>

function remove_ing(get_id){
	if(ing_count){
		$("#div-"+get_id).remove();
		ing_count--;
	}
	
	
}
function remove_step(get_id){
	console.log(step_count);
	if(step_count){
		$("#"+get_id).remove();
		step_count--;
	}
	
}


</script>
