app.controller('TurnoverCtrl', ['$scope', '$http', 'stockFactory', 'stockService', function($scope, $http, stockFactory, stockService) {
  // initialize
  $scope.init = function(turnoversStr) {
    $scope.turnovers = stockFactory.symbolChange(JSON.parse(turnoversStr));
    $scope.number = null;
    $scope.date = new Date();
    $scope.desc = true;
    $scope.asc = false;
  }

  // search click
  $scope.search = function() {
    if($scope.date === null && $scope.number === null) {
      $scope.date = new Date();
    }

    if($scope.date !== null) {
      stockService.searchStock($http, $scope.number, $scope.date.toISOString().slice(0, 10)).then( function(turnovers) {
        $scope.turnovers = stockFactory.symbolChange(turnovers);
      });
    } else {
      stockService.searchStock($http, $scope.number, $scope.date).then( function(turnovers) {
        $scope.turnovers = stockFactory.symbolChange(turnovers);
      });
    }
  }

  // export click
  $scope.export = function() {
    stockFactory.exportStocks($scope.turnovers)
  }

  // desc sort click
  $scope.sortDesc = function(column) {
    $scope.desc = false;
    $scope.asc = true;
    $scope.turnovers = stockFactory.desc(column, $scope.turnovers);
  }

  // asc sort click
  $scope.sortAsc = function(column) {
    $scope.desc = true;
    $scope.asc = false;
    $scope.turnovers = stockFactory.asc(column, $scope.turnovers);
  }
}]);
