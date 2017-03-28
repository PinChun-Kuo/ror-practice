angular
  .module('stockApp')
  .service('stockService', function($log) {
    this.searchStock = function($http, number, date) {
      return $http.get('/turnovers/search.json?number=' + number + '&date=' + date)
        .then(function(res) {
          return res.data;
        }).catch(function(err) {
          $log(err);
        });
    };
  });
