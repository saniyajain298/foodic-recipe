<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script>
	/* recipe(); */
	function recipe(){
		console.log("recipe function");
		$.ajax({
			type: 'get',
			url: 'profileRecipeGet',
			data: {posted_by:"1"},
			success: function(data, status){
				var recipe = JSON.parse(data)
				console.log(data)
			}
		});
	}
</script>