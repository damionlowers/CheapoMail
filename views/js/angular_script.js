var App = angular.module('my-app', ['ngRoute',"bsTable"]);


App.config(function($routeProvider) {
		$routeProvider

			// route for the home page
			.when('/', {
				templateUrl : 'partials/mylinks.html',
				controller  : 'Mycontroller'
			})

			// route for the Compose page
			.when('/unread_message_partial', {
				templateUrl : 'partials/unread_message_partial.html',
				controller  : 'unread_message_Controller'
			})

			.when('/read_messages_partial',{
				templateUrl : 'partials/read_messages_partial.html',
				controller : "read_message_Controller", 
			})

			.when('/users_partial',{
				templateUrl : 'partials/users_partial.html',
				controller : "users_Controller",
			})

			// // route for the contact page
			// .when('/contact', {
			// 	templateUrl : 'pages/contact.html',
			// 	controller  : 'contactController'
			// });
});

App.controller('unread_message_Controller', function($scope) {

	var promise = $.post("../php/controller/message_controller.php",{request:'findall' }).then(
			function(response) {
				
				data=JSON.parse(response);

				$scope.itemsByPage=10;

    			$scope.rowCollection = data;
    			$scope.count = data.length;
				
			},
			function(error) {
				// report something
			});

	$scope.trigger = function(){


		var promise = $.post("../php/controller/message_controller.php",{request:'findall' }).then(
			function(response) {
				// do something
				// console.log("jhgjks");
				// console.log(answer);
				data=JSON.parse(response);

				console.log(data);

				$scope.itemsByPage=10;

    			$scope.rowCollection = data;
    			$scope.count = data.length;
				// console.log("data");
				// console.log(data);
				// //alert(data);
				// console.log("data");
				// $scope.messages = data;
				// ///
				// $scope.message = 'This is unread messages';
				// // model for bs-table
				// $scope.contactList = [];

				// // get contact list
				// $scope.contactList = data;

			},
			function(error) {
				// report something
			});
		//console.log('This is unread messages');
		//$scope.message = 'This is unread messages';

	}


	$scope.formsubmit = function(messageID,userID){

		// alert(messageID+ "     "+userID);

		var promise = $.post("../php/controller/read_message_controller.php",{message_id:messageID,reader_id:userID,request:'insert' }).then(
			function(response2) {
				data2=JSON.parse(response2);

				alert(data2);

				alert("inside data2");

				if (data2.status == 200) {

					var promise = $.post("../php/controller/message_controller.php",{message_id:messageID,request:'delete' }).then(
					function(response1) {
						data1=JSON.parse(response1);

						if (data1.status == 200) {
							alert("ok");
						}else{
							alert("not ok");
						};
					},
					function(error) {
						// report something
					});

				}else{

					alert(data2);

				};
			},
			function(error) {
			// report something
		});
	}




});





App.controller('Mycontroller', function($scope) {
         $scope.message = "Hello Angular";

         $scope.cltr = function(){
         	$scope.cltr = "Mycontroller";
         }
         // unread_message_Controller 

         
    });


App.controller('MainClt', function($scope) {
         $scope.message = "Hello Angular";

         
    });



App.controller('read_message_Controller',function($scope) {
	$scope.message = "read message";

	var promise = $.post("../php/controller/read_message_controller.php",{request:'findall' }).then(
			function(response) {
				
				data=JSON.parse(response);

				$scope.itemsByPage=10;

    			$scope.allReadMessages = data;
    			$scope.count = data.length;
				
			},
			function(error) {
				// report something
			});

	$scope.trigger = function(){


		var promise = $.post("../php/controller/read_message_controller.php",{request:'findall' }).then(
			function(response) {
				// do something
				// console.log("jhgjks");
				// console.log(answer);
				data=JSON.parse(response);

				$scope.itemsByPage=10;

    			$scope.rowCollection = data;
    			$scope.count = data.length;
				// console.log("data");
				// console.log(data);
				// //alert(data);
				// console.log("data");
				// $scope.messages = data;
				// ///
				// $scope.message = 'This is unread messages';
				// // model for bs-table
				// $scope.contactList = [];

				// // get contact list
				// $scope.contactList = data;

			},
			function(error) {
				// report something
			});
		//console.log('This is unread messages');
		//$scope.message = 'This is unread messages';

	}

    });







App.controller('users_Controller',function($scope) {
         $scope.message = "Users";

         $scope.data = {
    		singleSelect: null,
		  };


         $scope.addUser = function(){
         	var username = $scope.username;
         	var firstname = $scope.firstname;
         	var lastname = $scope.lastname;
         	var password = $scope.password;
         	var cPassword = $scope.cPassword;

         	var passwordChecker = function(str){
         		if (str.length < 8){
         			$('input[type="text"],input[type="password"]').css("border","2px solid red");
         			alert('password too short');
         			return false;
         		}else if(str.search(/\d/) == -1){
         			$('input[type="text"],input[type="password"]').css("border","2px solid red");
         			alert('please include a digit in password');
         			return false;
         		}else if(str.search(/[A-Z]/) == -1){
         			$('input[type="text"],input[type="password"]').css("border","2px solid red");
         			alert('please include a UpperCase Letter in password');
         			return false;
         		}else if(str.search(/[a-zA-Z]/) == -1){
         			$('input[type="text"],input[type="password"]').css("border","2px solid red");
         			alert('please include a  Letter in password');
         			return false;
         		}else{
         			return true;
         		}
         	}


         	if( cPassword != password){
         		alert("passwords do not match");
         	}
         	else if( firstname ==null|| lastname ==null || username ==null || password ==null || cPassword ==null){
         		$('input[type="text"],input[type="password"]').css("border","2px solid red");
         		$('input[type="text"],input[type="password"]').css("box-shadow","0 0 3px red");
         		alert("Please fill all fields...!!!!!!");
         	}
         	else {
         		
         		if (passwordChecker(password)) {
         			$.post("../php/controller/user_controller.php",{ username: username, request:'checkuser' },
         				function(data){
         				// alert("this"+data);
         				data=JSON.parse(data);
         				// alert("username");
         				if(data.status==200){
         					alert("User already exists");
         				}
         				else{
         					alert("soon Successful");
         					alert($scope.data.singleSelect);
         					$.post("../php/controller/user_controller.php",{ 
         						firstname:firstname, 
         						lastname:lastname,
         						username:username,
         						password:password,
         						usertype:$scope.data.singleSelect,
         						request:'insert'
         					},
         					function(data) {
         						alert("created "+data);
         						data=JSON.parse(data);
         						if(data.status==200){
         							alert("Successful");
         							$scope.username='';
         							$scope.firstname='';
         							$scope.lastname='';
         							$scope.password='';
         							$scope.cPassword='';
         						}
         						else
         							alert("User not created");
         					});
         				}
         			}
         			);
         		}
         		
         	}

         	// http.post("../php/controller/user_controller.php",posts).then(
         	// 		function successCallBack(response){

         	// 			console.log(response.data);

         	// 		},
         	// 		function errorCallBack(response){

         	// 		});



         };
    });

// App.preMainApp.factory('Request', function ($http, $q) {
//     return {
//         // getRequest: function (url) {
//         //     var promise = $q.defer();
//         //     $http.get(url).success(function (data) {
//         //         promise.resolve(data);
//         //     }).error(function (data) {
//         //         promise.reject(data);
//         //     });
//         //     return promise.promise;
//         // },

//         // putRequest: function (url, postdata) {

//         //     var promise = $q.defer();
//         //     $http.put(url, postdata).success(function (data) {
//         //         promise.resolve(data);
//         //     }).error(function (data) {
//         //         promise.reject(data);
//         //     });
//         //     return promise.promise;
//         // },

//         postRequest: function (url, postdata) {

//             //postdata=encodeURIComponent(JSON.stringify(postdata));

//             var promise = $q.defer();
//             $http.post(url, postdata, {
//                 headers: {
//                     'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
//                 }

//             }).then(function (data) {
//                 promise.resolve(data);
//             }, function (data) {
//                 promise.reject(data);
//             });
//             return promise.promise;

//         }
//     };
// });