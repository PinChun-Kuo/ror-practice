angular
  .module('stockApp')
  .controller('StockController', function($http, stockFactory, stockService) {
    var vm = this;
    // initialize
    vm.init = function(stocksStr) {
      vm.stocks = stockFactory.symbolChange(angular.fromJson(stocksStr));
      vm.number = null;
      vm.date = new Date();
      vm.desc = true;
      vm.asc = false;
    };

    // search click
    vm.search = function() {
      if (vm.date === null && vm.number === null) {
        vm.date = new Date();
      }

      if (vm.date !== null) {
        stockService.searchStock($http, vm.number, vm.date.toISOString().slice(0, 10)).then(function(stocks) {
          vm.stocks = stockFactory.symbolChange(stocks);
        });
      } else {
        stockService.searchStock($http, vm.number, vm.date).then(function(stocks) {
          vm.stocks = stockFactory.symbolChange(stocks);
        });
      }
    };

    // export click
    vm.export = function() {
      stockFactory.exportStocks(vm.stocks);
    };

    // desc sort click
    vm.sortDesc = function(column) {
      vm.desc = false;
      vm.asc = true;
      vm.stocks = stockFactory.desc(column, vm.stocks);
    };

    // asc sort click
    vm.sortAsc = function(column) {
      vm.desc = true;
      vm.asc = false;
      vm.stocks = stockFactory.asc(column, vm.stocks);
    };
  });
