angular.module('Essayer', ['ngResource', 'Essayer.controllers'])
  .config(['$routeProvider', ($routeProvider) ->
    $routeProvider.when('/', 
      templateUrl: "/assets/main.html"
      controller: 'MainCtnl'
    )
    $routeProvider.otherwise({redirectTo: '/'})
  ])
  .factory('Article', ['$resource', ($resource) ->
    $resource('/articles/:articleId', {articleId: '@id'},
      {
        fetchText: {method: 'GET', params: {url: "@url"}, isArray: false},
        update: {method: 'PUT'}
      }
    )
  ])
