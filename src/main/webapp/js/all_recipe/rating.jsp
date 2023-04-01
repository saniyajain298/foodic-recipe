<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script>
	getRating()
	function setRating(rating){
		var food_id = <%= request.getParameter("id")%>
		var posted_by = "<%= session.getAttribute("userid") %> ";
		$.ajax({
			url:"rating",
			type:"post",
			data:{"rating":rating,"userId":posted_by,"foodId":food_id},
			success:function(data){
				console.log("Rating done")
				ratingUpdate(rating)
			}
		});
	}
	function getRating(){
		var food_id = <%= request.getParameter("id")%>
		var posted_by = "<%= session.getAttribute("userid") %> ";
		console.log("inside getrating");
		$.ajax({
			url:"getrating",
			type:"get",
			data:{"userId":posted_by,"foodId":food_id},
			success:function(data){
				console.log("Rating get done" + data)
				ratingUpdate(data)
			}
		});
	}
	function ratingUpdate(n){
		console.log("Inside Ratingupdate" +n)
		var reaction = ["i have not tried yet","Worst recipe i have ever tried \u{1F612} ", "I don't like this recipe \u{1F615}",
			"I like this recipe \u{1F642}", "This recipe is amazing \u{1F60B}", "I'm fan of this recipe \u{1F60D}"]
		
		
		for(let i=1;i<=5;i++){
			if(i<=n){
				$("span:nth-of-type("+ i + ")").not(".checked").addClass("checked");
			}
			else{
				if ($("span:nth-of-type("+ i + ")").hasClass('checked')){
					$("span:nth-of-type("+ i + ")").removeClass("checked");
				}
				else break;
			}
			console.log("console"+reaction[n] + n)
			$(".reaction").text(reaction[n])	
		}
		
		
		
		
	}

</script>