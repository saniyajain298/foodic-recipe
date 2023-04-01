/**
 * Comment
 */
 <script>
	var food_id = <%= request.getParameter("id")%>
	var posted_by = "<%= session.getAttribute("username") %> ";
	console.log(recipe_id);
 	$(".post_comment").click(function(){
 		
 		var comment = $(".comment_input").val();
 		if(comment !=  ""){
 			
			console.log(posted_by);
			
			$.ajax({
				url: "comment_post",
				type: "post",
				data:{"food_id":food_id , "posted_by":posted_by , "comment":comment},
				success: function(data, status){
					console.log(data);
					if(data=="Error"){
						alert("Your comment is not upload");
					}
					else {
						update_comment();
					}
				}
			});
 		
 		}
 	});
 	
 	update_comment = () =>{
 		$.ajax({
			url: "get_comment",
			type: "get",
			data:{"food_id":food_id},
			success: function(data, status){
				console.log(data + "calling");
				if(data=="Error"){
					location.reload();
				}
				else {
					var json = JSON.parse(data);
					
					var html = "";
					
					for(let i=0; i<json.length; i++){
						var date = new Date(json[i]["time"]);
						var time = date.toDateString() +" "+ date.toLocaleTimeString() ; 
						console.log(time);
						html += `<li class="list-group-item">
					  		<h6>`+ json[i]["posted_by"] +`</h6>
					  		<small class="position-absolute bottom-0 end-0">` + time +`</small>
					  		<p>`+ json[i]["comment"] +`</p>
					  		<br>	
					  		
					  	</li>`
					}
					$(".comment_list").html(html);
					$(".comment_input").val() = "";
					console.log(html);
	
				}
			}
		});
 	}
 	update_comment();
 </script>