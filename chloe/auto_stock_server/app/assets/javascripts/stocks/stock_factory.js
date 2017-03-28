/* global alasql:true */
/* eslint no-undef: "error" */

angular
  .module('stockApp')
  .factory('stockFactory', function() {
    return {
      symbolChange: function(stocks) {
        for (let i = 0; i < stocks.length; i += 1) {
          stocks[i].changeNum = Math.abs(stocks[i].change);
          if (stocks[i].change < 0) {
            stocks[i].symbol = '▼ ';
            stocks[i].colorClass = 'down';
          } else if (stocks[i].change === 0) {
            stocks[i].symbol = '- ';
            stocks[i].colorClass = '';
          } else {
            stocks[i].symbol = '▲ ';
            stocks[i].colorClass = 'up';
          }
        }

        return stocks;
      },
      exportStocks: function(stocks) {
        var exportStocks = [];
        // filter export column and order
        for (let i = 0; i < stocks.length; i += 1) {
          exportStocks[i] = {
            '代號': stocks[i].number,
            '名稱': stocks[i].name,
            '開盤價': stocks[i].opening_price,
            '最高價': stocks[i].highest_price,
            '最低價': stocks[i].lowest_price,
            '昨收盤': stocks[i].closing_yesterday,
            '今收盤': stocks[i].closing_today,
            '成交量': stocks[i].volumn,
            '漲跌': stocks[i].change,
            '漲跌幅': stocks[i].quote_change,
            '日期': stocks[i].date
          };
        }
        alasql("SELECT * INTO XLSX( 'stocks.xlsx', {headers:true} ) FROM ?", [exportStocks]);
      },
      desc: function(sortItem, dataList) {
        var sortList = dataList.sort(function(a, b) {
          return b[sortItem] > a[sortItem] ? 1 : -1;
        });
        return sortList;
      },
      asc: function(sortItem, dataList) {
        var sortList = dataList.sort(function(a, b) {
          return a[sortItem] > b[sortItem] ? 1 : -1;
        });
        return sortList;
      }
    };
  });
