angular
  .module('turnoversApp')
  .directive('search', function() {
    return {
      restrict: 'E',
      replace: true,
      scope: {
        stockNumber: '=',
        searchDate: '=',
        searchFunction: '&',
        exportFunction: '&'
      },
      templateUrl: 'search.html'
    };
  });

angular
  .module('turnoversApp')
  .directive('stockTable', function() {
    return {
      restrict: 'E',
      replace: true,
      scope: {
        desc: '=',
        asc: '=',
        turnovers: '=',
        sortDesc: '&',
        sortAsc: '&'
      },
      templateUrl: 'stock_table.html'
    };
  });
