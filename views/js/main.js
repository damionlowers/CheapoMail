$(document).ready(function(){

	$('#login').click(function(){

		var username = $("#username").val();
		var password = $("#password").val();
		if( username =='' || password ==''){
			$('input[type="text"],input[type="password"]').css("border","2px solid red");
			$('input[type="text"],input[type="password"]').css("box-shadow","0 0 3px red");
			alert("Please fill all fields...!!!!!!");
		}else {
			$.post("../php/controller/user_controller.php",{ username: username, password:password, request:'login' },
				function(data) {
					data=JSON.parse(data);
					if(data.status==200)
						location.href="profile.html"
					// if(data=='Invalid Email.......') {
					// 	$('input[type="text"]').css({"border":"2px solid red","box-shadow":"0 0 3px red"});
					// 	$('input[type="password"]').css({"border":"2px solid #00F5FF","box-shadow":"0 0 5px #00F5FF"});
					// 	alert(data);
					// }else if(data=='Email or Password is wrong...!!!!'){
					// 	$('input[type="text"],input[type="password"]').css({"border":"2px solid red","box-shadow":"0 0 3px red"});
					// 	alert(data);
					// } else if(data=='Successfully Logged in...'){
					// 	$("form")[0].reset();
					// 	$('input[type="text"],input[type="password"]').css({"border":"2px solid #00F5FF","box-shadow":"0 0 5px #00F5FF"});
					// 	alert(data);
					// } else{
					// 	alert(data);
					// }

					console.log(data);
				}
			);
		}
	});
});