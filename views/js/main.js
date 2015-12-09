$(document).ready(function(){

	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});

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

	$("#messageSend").click(function(){

		var confirmation = false;
	    alert("The paragraph was clicked.");
	    var recepent = $('#inputTo').val();
	    var subject = $('#inputSubject').val();
	    var messageBody = $('#inputBody').val();
	    if( recepent ==''){
			alert("Please add A recipent to the message");
		}else if(subject=='' || messageBody ==''){

			confirmation = confirm("You are about to send a message with no Subject or a Body is that ok?");
		}else{

			confirmation = true;
		}

		alert(confirmation);



		


		if(confirmation){
			$.post("../php/controller/message_controller.php",{ recepent: recepent,subject:subject, messageBody:messageBody,request:'send' },
				function(data) {
					data=JSON.parse(data);
					if(data.status==200)
						//location.href="profile.html"
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