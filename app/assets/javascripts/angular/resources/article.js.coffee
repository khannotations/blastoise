angular.module('resources.article', ["ngResource"])
  .factory('Article', ['$resource', ($resource) ->
    $resource('/articles/:articleId', {articleId: '@id'},
      {update: {method: 'PUT'}})
  ])
