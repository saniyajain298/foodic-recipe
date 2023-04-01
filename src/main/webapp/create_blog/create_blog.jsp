<section>
<!-- image, hashtag, posted by, description , time, blogid, title -->
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center m-4"><h1>Create Blog</h1></div>
			<div class="col-md-1" ></div>
			<div class="col-md-10 d-flex flex-column" >
				<form action="create_blog" onsubmit="return submit()" method="post" enctype="multipart/form-data" >	
				<table class="table shadow">
				  
				  
				  <tbody>
				  <tr>
				  	<td><input type="hidden" value="<%= session.getAttribute("username")%>" name="username" ></td>
				      
				  </tr>
				    <tr>
				      <td><label>Enter Image</label></td>
				      <td><input type="file" id="blog-image" onchange="up()" name="image" class="form-control">
				      <div class="form-text">Choose image with same width and height</div>
				      </td>
						
				    </tr>
				    <tr>
				      <td><label>Title</label></td>
				      <td><input type="text" placeholder="Enter Blog Title" name="title" class="form-control"></td>
	
				    </tr>
				    <tr>
				      <td><label>Hashtag</label></td>
				      <td><input type="text" placeholder="Enter Blog Hashtags" name="hashtag" class="form-control"></td>
	
				    </tr>
				    <tr>
				      <td><label>Blog Content</label></td>
				   	<td>
						<textarea class="form-control" id="blog_content" name="blog_content" placeholder="Start writing here..."></textarea>
					</td>
				    </tr>
				    <tr >
				    	<td class="text-center" colspan="2">
				    		<button type="submit" class="btn btn-primary" >Submit</button>
				  	
				    	</td>
				  			
				    </tr>
				  </tbody>
				  
				  
				</table>
				</form>
			</div>
		</div>
	</div>

</section>
