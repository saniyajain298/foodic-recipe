<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script>
	var recipe_id = <%= request.getParameter("id")%>
	var view_by = <%= session.getAttribute("userid") %>
	$.ajax({
		url: "get_recipe_detail",
		type: "get",
		data:{recipe_id: recipe_id, view_by: view_by},
		success:function(data, status){
			var recipe = JSON.parse(data); 
			update_content(recipe)
			console.log(recipe)
			ratingUpdate(recipe[""]);
		}
	});
	
	update_content = (recipe) =>{
		$(".main_image").attr('src', "upload_image/" + recipe["main_image"]);
		$(".name-heading").text(recipe["food_name"]+ " Recipe")
		$(".hashtags").text(recipe["hashtags"]);
		$(".about").text(recipe["about"]);
		
		/* ingredient */
		var ing_json = JSON.parse(recipe["ingredients"]);
		var count = Object.keys(ing_json).length;
		for(let i=0; i<count; i++){
			$(".ingredints").append(`<tr>
				      	<th>`+ (i+1) +`</th>
				      	<td>`+ ing_json[i]["ing"] +`</td>
				      	<td>`+ ing_json[i]["quantity"] +`</td>
				    </tr>`);
		}
		
		/* step image */
		var step_img = JSON.parse(recipe["images"])
		
		for(let i=0;i<step_img.length; i++)
		{
	
			$(".step_image").append('<img class="steps_img" src="upload_image/'+step_img[i] + '" onerror= "upload_image/czFFURuDYr.png"/>')
		} 
		
		/* steps */
		$(".step-heading").text("Insructions")
		var step_json = JSON.parse(recipe["steps"]);
		for(let i=0; i<step_json.length; i++){
			
			step_json[i] = step_json[i].replace(/(?:\r\n|\r|\n)/g, '<br>');
			step_json[i] = step_json[i].replace("�", '°');
	
			var html = '<div class="row">'
							+'<div class="col-md-1 count">'+(i+1)+'.</div>'
							+'<div class="col-md-11">'+ step_json[i] +'</div>'+
						'</div><hr><br>';
			$(".step_list").append(html)
		}
		/* precaution-content */
		$(".precaution-content").text(recipe["precaution"])
		
		/* Total ratigs */
		let rating = (recipe['sum_rating']/(recipe['total_rating']*5))*5
		$(".tRating").text(rating+" average based on "+recipe['total_rating']+" reviews.")
	}

	
</script>