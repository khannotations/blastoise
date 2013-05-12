angular.module('services.auth', ["resources.reader"])
  .service('AuthService', ["$http", "Reader", ($http, Reader) ->
    # Cache it in this service, to not make a request every time
    currentUser = {}
    {
      currentUser: ->
        # If current user is defined, return it
        return currentUser if currentUser.email
        $http.get('/current_user').success (data) ->
          return currentUser = new Reader(data)
    }
  ])
