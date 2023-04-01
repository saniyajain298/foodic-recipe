let get_data="";

get_data = ()=>{
	var all_recipe;
	$.ajax({
		url:"getAllRecipe",
		type:"get",
		data:{name: "Donald Duck"},
		success: function(data, status){						
			var all_recipe = JSON.parse(data);
			console.log(all_recipe)
			update_html(all_recipe);

		}
	
	});	
}

update_html = (all_recipe) =>{
	var html = "";
	var rating;

	for(let i =0; i<all_recipe.length ;i++){
		rating = (all_recipe[i]["sRating"]/all_recipe[i]["tRating"])*5;
		if(all_recipe[i]["sRating"] == 0){
			rating =0;
		}
		let date = new Date(all_recipe[i]["created_at"]);

		let created_at = date.toLocaleString('en-US',{day:'numeric', year:'numeric', month:'short'});	
		
		html += `<div class="recipe-card">
					<a href="all_recipe.jsp?id=${all_recipe[i]["food_id"]}" class="card-text card-a">
						<div>
							<div class="recipe_img">
								<img src="upload_image/${all_recipe[i]["main_image"]}"class="recipe_img" onerror="upload_image/czFFURuDYr.png"/>
							</div>
							<div class="all-info">
								<div class="position-relative">
									<p class="info">${created_at}<br>
									<span class="recipe-name">${all_recipe[i]["food_name"]}</span><br>
									${all_recipe[i]["hashtags"]}<br>
									${all_recipe[i]["ingredient"]}ingrediets<br>
									<span class="rating">&nbsp;&#9734;`+rating+`&nbsp;</span> ${all_recipe[i]["sRating"]}/${all_recipe[i]["tRating"]} Ratings<br>
									&#128065; 12,000</p>
								</div>
								<div class="position-relative bottom-0 start-0">
									<div class="d-flex flex-row mt-3">
										<div class="all-info">
											<img class="profile" src="images/foodic_profile/${all_recipe[i]["profile"]}">
										</div>	
										<div class="foodic-name">
											<p>SaniyaJain@298</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>`;
	
	}
	$(".all_recipe_card").html(html);

}






get_data();