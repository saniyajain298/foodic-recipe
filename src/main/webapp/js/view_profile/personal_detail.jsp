<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script>
	var username ="<%= session.getAttribute("username") %>"
	function edit_icon_click(id){
		console.log(id);
		if(id == "gender"){
			var html = `<div>
							<div class="d-flex">
								<input type="radio" value="Female" name="gender">
								&nbsp;&nbsp;Female
							</div>
							<div class="d-flex">
								<input type="radio" value="Male" name="gender" >
								&nbsp;&nbsp;Male
							</div>	
							<div class="d-flex">
								<input type="radio" value="Others" name="gender">
								&nbsp;&nbsp;Others
							</div>	
						</div>
						<span id="icon-gender" class="d-flex justify-content-end"><i class="fas fa-check" onclick="update_icon_click('`+id+`')"></i></span><br>`;
						
			var gender = $("#input-gender").val();	
			console.log(gender);
			$("#"+id).html(html);
			$("input[name=gender][value='"+gender+"']").prop("checked",true);
		}
		else{
			console.log("this is console" + id)
			$("#input-" +id).attr("readonly", false);
			$("#input-" +id).addClass("edit-class");
			$("#icon-" +id).html('<i class="fas fa-check" onclick="update_icon_click(`'+id+'`)"></i>')	
			
		}
		
	}
	function update_icon_click(id){
		var type = id, value="";
		
		if(id == "gender"){
			value= $("input[name='gender']:checked").val(); 
			var html = `<input type="text" value="`+value+`" id ="input-gender" class="edit_detail"readonly>
				<span id="icon-gender"><i class = "fas fa-pen" onclick="edit_icon_click('gender')"></i></span>`;
			
			$("#"+id).html(html);	
		}
		else{
			$("#input-" +id).attr("readonly", "readonly");	
			$("#input-" +id).removeClass("edit-class");
			$("#icon-" +id).html('<i class="fas fa-pen" onclick="edit_icon_click(`'+id+'`)"></i>')	
			
			value = $("#input-" +id).val();
		}
		
		if(type){
			$.ajax({
				url: "update_detail",
				type: "post",
				data:{"value":value, "type":type, "username": username},
				success: function(data, status){
					console.log(data+ "calling");
					
				}
			});
		}
	
	}
	
	get_detail = () =>{
		console.log("working");
		$.ajax({
			url: "update_detail",
			type: "get",
			data:{"username": username},
			success: function(data, status){
				console.log(data+ "calling");
				var detail = JSON.parse(data);
				console.log(detail)
				update_value(detail);
				console.log("oay")
			}
		});
	}
	update_value= (detail) =>{
		console.log("not okay")
		console.log(detail)
		console.log("okay")
		 var array = ["username", "name", "about", "gender", "dob", "mobile", "email", "location"];
		 array.forEach(update);
		 console.log(array);
		 
		 function update(item){
			 
			 $("#input-"+ item).val(detail[item]);			 
		 }
		 console.log(detail["profile"]);
		 $("#profile_image").attr("src","images/foodic_profile/"+detail["profile"]);
		 $("#profile_image_view").attr("href","images/foodic_profile/"+detail["profile"]);

	}
	
	get_detail()
</script>