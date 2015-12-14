var App = angular.module('my-app', ['ngRoute']);


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

			// // route for the contact page
			// .when('/contact', {
			// 	templateUrl : 'pages/contact.html',
			// 	controller  : 'contactController'
			// });
});

App.controller('unread_message_Controller', function($scope) {
		$scope.message = 'This is unread messages';
	});

App.controller('Mycontroller', function($scope) {
         $scope.message = "Hello Angular";
    });

App.controller('read_message_Controller',function($scope) {
         $scope.message = "read message";
    });