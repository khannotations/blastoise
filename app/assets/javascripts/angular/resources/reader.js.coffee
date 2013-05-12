angular.module('resources.reader', ["ngResource"])
  .factory('Reader', ['$resource', ($resource) ->
    $resource('/readers/:readerId', {readerId: '@id'},
      {update: {method: 'PUT'}})
  ])
