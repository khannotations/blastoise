angular.module('Essayer', [
  'ngResource',
  'Read',
  'Curate',
  'resources.reader',
  'resources.article',
  'services.auth'
])
  # Set up all the routes
  .config(['$routeProvider', '$locationProvider',
    ($routeProvider, $locationProvider) ->
      # $locationProvider.html5Mode true
      $routeProvider.otherwise({redirectTo: '/'})
  ])
  .run(['AuthService', (AuthService) ->
    # Fetch it the first time onload
    AuthService.currentUser()
  ])
