<html>
<head></head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#submitBtn").click(function(){ 
    	$(document).on("submit", "form", function(event)
    			{
    		
    		var datastring = $("#myform").serialize();
    		alert("submitted"+datastring);
    		$.ajax({
    		    url : '/home1',
    		    type: 'POST',
    		    dataType: 'json',
    		    data: datastring,
    		    cache : false,
    		    processData: false
    		}).done(function(data) {
    		    alert(data);
    		});        
    			});
    });
});
</script>
<body>


<form action="/home1" name="myform" id="myform" method="post">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
  <input type="submit" name="formdata"   id="submitBtn" value="get name">
</form>
</body>
</html>