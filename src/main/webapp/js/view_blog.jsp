<script>

	get_data = () =>{
		$.ajax({
			url:"get_blog",
			type:"get",
			success:function(data, status){
				var blog = JSON.parse(data);
				update_content(blog)
			}
		});
		
	}
	update_content = (blog) =>{
		var html ="",content="";
		console.log(blog);
		console.log(blog[0]["image"]);
		for(let i=0;i<blog.length;i++){
			content = blog[i]["blog_content"].slice(0, 50);
			let date = new Date(blog[i]["time"]);
			let created_at = date.toLocaleString('en-US',{day:'numeric', year:'numeric', month:'short'});	
			
			html += `<div class="col-md-4 mb-3 d-flex justify-content-center">
			<div class="card shadow">
	            <img src="images/uplaod_blog/`+blog[i]["image"]+`" width="100%" class="card-img-top" alt="Image">
	            <small class="p-2">`+created_at+`</small>
	            <div class="card-body">
	                <h5 class="card-title">`+blog[i]["title"]+`</h5>
	                <p>`+content+`&nbsp;<a href="view_blog.jsp?blog_id=`+blog[i]["blog_id"]+`">read more...</a></p>

	            </div>
	            <div class="d-flex justify-content-between">
	                <div>
	                    <a href="#" class="btn-outline-warning btn"><i><img alt="Avatar"
	                                class="rounded-circle" style="width: 3rem;boarder-radius:100%;"
	                                src="images/foodic_profile/`+blog[i]["profile"]+`"></i> `+blog[i]["postedBy"]+`</a>
	                </div>
	            </div>

	        </div></div>`;
		}
		$("#show-cards").html(html);
	}
	get_data();	
</script>