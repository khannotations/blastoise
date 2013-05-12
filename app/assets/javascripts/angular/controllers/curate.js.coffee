angular.module('Curate', ["resources.article"])
  .config(['$routeProvider', ($routeProvider) ->
    $routeProvider.when('/curate', 
      templateUrl: "/assets/curate.html"
      controller: 'CurateCtrl'
    )
  ])
  .controller('CurateCtrl', ["$scope", "Article", "$http", "$location"
    ($scope, Article, $http, $location) ->
      $scope.editingTitle = false
      $scope.status = 'Preview'

      $scope.previewArticle = ->
        console.log 'called'
        if $scope.status is 'Preview'
          newArticle = new Article($scope.newArticle)
          $http.get("/query_article?url=#{newArticle.url}").success (a) ->
            newArticle.author = a.author
            newArticle.title = a.title
            newArticle.text = a.content
            $scope.newArticle = newArticle
            if a.content
              $scope.status = 'Submit'
        else
          console.log "submitted!"
          $scope.status = 'Preview'

      $scope.toggleEditTitle = ->
        $scope.editingTitle = !$scope.editingTitle

  ])
  
