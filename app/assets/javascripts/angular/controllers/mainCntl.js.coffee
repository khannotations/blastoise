angular.module('Essayer.controllers', []).
  controller('MainCtnl', ["$scope", "Article", ($scope, Article) ->
    $scope.createArticleFromUrl = ->
      newArticle = new Article($scope.newArticle)
      # console.log newArticle
      newArticle.$fetchText({url: newArticle.url}, (a) ->
        console.log a
        newArticle.author = a.author
        newArticle.title = a.title
        newArticle.text = unescape(a.content)
        $scope.newArticle = newArticle
      )
  ])
