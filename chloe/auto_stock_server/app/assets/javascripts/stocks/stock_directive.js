angular
  .module('stockApp')
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
  .module('stockApp')
  .directive('stockTable', function() {
    return {
      restrict: 'E',
      replace: true,
      scope: {
        desc: '=',
        asc: '=',
        stocks: '=',
        sortDesc: '&',
        sortAsc: '&'
      },
      templateUrl: 'stock_table.html'
    };
  });
