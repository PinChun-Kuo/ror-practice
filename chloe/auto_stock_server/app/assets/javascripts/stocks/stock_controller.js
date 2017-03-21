angular
  .module('turnoversApp')
  .controller('TurnoverController', function($http, stockFactory, stockService) {
    var vm = this;
    // initialize
    vm.init = function(turnoversStr) {
      vm.turnovers = stockFactory.symbolChange(angular.fromJson(turnoversStr));
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
        stockService.searchStock($http, vm.number, vm.date.toISOString().slice(0, 10)).then(function(turnovers) {
          vm.turnovers = stockFactory.symbolChange(turnovers);
        });
      } else {
        stockService.searchStock($http, vm.number, vm.date).then(function(turnovers) {
          vm.turnovers = stockFactory.symbolChange(turnovers);
        });
      }
    };

    // export click
    vm.export = function() {
      stockFactory.exportStocks(vm.turnovers);
    };

    // desc sort click
    vm.sortDesc = function(column) {
      vm.desc = false;
      vm.asc = true;
      vm.turnovers = stockFactory.desc(column, vm.turnovers);
    };

    // asc sort click
    vm.sortAsc = function(column) {
      vm.desc = true;
      vm.asc = false;
      vm.turnovers = stockFactory.asc(column, vm.turnovers);
    };
  });
