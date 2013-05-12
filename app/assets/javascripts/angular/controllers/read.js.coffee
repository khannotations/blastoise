angular.module('Read', ["resources.article", "services.auth"])
  .config(['$routeProvider', ($routeProvider) ->
    $routeProvider.when('/', 
      templateUrl: "/assets/home.html"
      controller: 'MainCtrl'
    )
  ])
  .controller('MainCtrl', ["$scope", "Article", "AuthService",
    ($scope, Article, AuthService) ->
      $scope.currentUser = AuthService.currentUser()
      $scope.currentUser.first_name ||= $scope.currentUser.email

      $scope.articles = Article.query()
  ])
