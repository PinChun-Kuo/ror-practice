app.directive('search', function() {
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

app.directive('stockTable', function() {
  return {
    restrict: 'E',
    replace: true,
    controller: 'TurnoverCtrl',
    scope: {
      desc: '=',
      asc: '=',
      turnovers: '=',
      sortDesc: '&',
      sortAsc: '&'
    },
    templateUrl: 'stock_table.html'
  }
});
