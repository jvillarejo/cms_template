angular.module('ObrasYSistemas').factory('$resource', ['$http', '$q', function($http, $q) {  
  var request = function(callback) {
    var deferred = $q.defer();

    callback().success(function(data) {
      deferred.resolve(data);
      console.log("Success searching resource");
    })
    .error(function(data) {
      console.log("Could not get resource");
    });

    return deferred.promise;
  }

  return {
    path: function(path)  {
      return {
        show: function(param) { 
          return request(function() {
            return $http.get(path + '/' + param);
          });
        }
      };
    }
  };
}]);