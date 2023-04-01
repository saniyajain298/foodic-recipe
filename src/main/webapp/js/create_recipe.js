var bs_modal = $('#modal');
var image = document.getElementById('image');
var cropper=[], reader, file,canvas=[];

var input_id, ing_count = 0, step_count = 0;
var img_count = 0;
var allimageData = [];
var n = 0;
$("body").on("change", ".image", function (e) {
    var files = e.target.files;
    var done = function (url) {
        image.src = url;
        input_id = "#preview" + e.target.id;
		n = e.target.id;
        bs_modal.modal('show');
    };
    if (files && files.length > 0) {
        file = files[0];
        if (URL) {
            done(URL.createObjectURL(file));
        } else if (FileReader) {
            reader = new FileReader();
            reader.onload = function (e) {
                done(reader.result);
            };
            reader.readAsDataURL(file);
        }
    }
});

bs_modal.on('shown.bs.modal', function () {
    var element= document.getElementById("image")
	element.classList.remove("cropper-hidden");
    $(".cropper-container").remove();
	if (cropper[n]) {
		cropper[n].destroy()
        cropper[n] = null;
    }
    cropper[n] = new Cropper(image, {
        aspectRatio: 1,
        viewMode: 3,
		preview: input_id
    });
console.log(cropper[n]);

}).on('hidden.bs.modal', function() {
	try{
		console.log("calling1");
		canvas[n] = cropper[n].getCroppedCanvas({
	        width: 160,
	        height: 160,
	    });
		console.log("calling1");
	    canvas[n].toBlob(function(blob) {
			url = URL.createObjectURL(blob);
	        var reader = new FileReader();
	        reader.readAsDataURL(blob);
	        reader.onloadend = function() {
	         	var base64data = reader.result;
	        }
	    });
		
		var imageData = canvas[n].toDataURL('image/png');
		allimageData[n] = imageData.toString();
	}
	catch(error){
		console.log("Some error");
	}
});

function submit_recipe() {
	for(let i=0;i<=img_count;i++){
		html = "<input type='hidden' name ='myHiddenField' id='img"+i+"'>";
		$("#croped_image1").append(html);
		document.getElementById("img"+i).setAttribute("value", allimageData[i]);
	}
	return true;
}
// ========================= Main Image =====================


main_image.onchange = evt => {
  const [file] = main_image.files
  if (file) {
    main_preview.src = URL.createObjectURL(file)
  }
}
//-------------------Addd remove functioning-------------------
///-----variables



function add() {
    img_count++;
    var content = `<div class="col-md-3" id="pre${img_count}" >
        <div class="preview" id ="preview${img_count}" >
             <img src="assets/img/all_default/create_recipe.png" >
        </div>
		<label for="${img_count}" class="img-label bg-warning shadow">
			Upload Image <i class="fa fa-2x fa-camera"></i>
        	<input type="file" name="image" class="image" id="${img_count}">
    	</label>
	</div>
`;
	console.log(img_count);
    $("#all_pre").append(content);

}
function remove() {
    if (img_count) {
        $("#pre" + img_count).remove();
		try{
			console.log("cropper is destroed");
		    cropper[img_count].destroy();
		    cropper[img_count] = null;		
		}
		catch(error){
			
		}

		console.log(img_count);	
		img_count--;
    }


}



// -------------------------Steps followed -------------

$("#11").click(function () {
    console.log("calling");
});
var ing_num = 0;
var step_num = 0;
function add_ing(get_id) {
    ing_num++;
    var content = `
    <div class="input-group mb-3" id ="div-${ing_num}${ing_num}">
          <div class="input-group-prepend">
              <input type="text" class="form-control" name="ing" placeholder="Name" required>
          </div>
          <input type="text" class="form-control" name="qty" placeholder="Quantity" required>
          <button type="button" onclick="add_ing('${ing_num}${ing_num}')" class="btn btn-warning shadow" >+</button>
          <button type="button" onclick="remove_ing('${ing_num}${ing_num}')" class="btn btn-warning shadow" >-</button>
    </div>
`;
    $("#div-" + get_id).after(content);
    console.log(ing_num);
    ing_count++;
}

function add_step(get_id) {
    step_num++;
    var content = `
    <div class="input-group mb-3 " id="s-${step_num}">
          <textarea name="step" class="form-control" placeholder="Step..." required></textarea>
          <button type="button" onclick="add_step('s-${step_num}')" class="btn btn-warning shadow" >+</button>
          <button type="button" onclick="remove_step('s-${step_num}')" class="btn btn-warning shadow" >-</button>
    </div>
`;
    $("#" + get_id).after(content);
    console.log(step_num);
    step_count++;
}

