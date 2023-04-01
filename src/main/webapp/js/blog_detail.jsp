<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script>
get_data = ()=>{
	var blog_id = <%= request.getParameter("blog_id")%>
	console.log("blog_id"+blog_id);
	$.ajax({
		
		url:"blog_detail",
		type:"get",
		data:{"blog_id":blog_id},
		success:function(data, status){
			console.log(data);
			var blog = JSON.parse(data);
			update_data(blog)
		}
	})
}
update_data = (blog)=>{
	var content = blog["blog_content"].replace(/\n\r?/g, '<br/><br/>');
	$("#blog-image").attr("src","images/uplaod_blog/" +blog["image"]);
	$(".title").html(blog["title"]);
	$(".content").html(content);
	
	
}
get_data()
</script>