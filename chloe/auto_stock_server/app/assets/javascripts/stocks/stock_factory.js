app.factory('stockFactory', function() {
  return {
    symbolChange: function(turnovers) {
      for (let i = 0; i < turnovers.length; i += 1) {
        turnovers[i].changeNum = Math.abs(turnovers[i].change);
        if(turnovers[i].change < 0) {
          turnovers[i].symbol = '▼ ';
          turnovers[i].colorClass = 'down'
        } else if(turnovers[i].change === 0) {
          turnovers[i].symbol = '- ';
          turnovers[i].colorClass = ''
        } else {
          turnovers[i].symbol = '▲ ';
          turnovers[i].colorClass = 'up'
        }
      }

      return turnovers;
    },
    exportStocks: function(turnovers) {
      let exportStocks = [];
      // filter export column and order
      for (let i = 0; i < turnovers.length; i += 1) {
        exportStocks[i] = {
          '代號': turnovers[i].number,
          '名稱': turnovers[i].name,
          '開盤價': turnovers[i].opening_price,
          '最高價': turnovers[i].highest_price,
          '最低價': turnovers[i].lowest_price,
          '昨收盤': turnovers[i].closing_yesterday,
          '今收盤': turnovers[i].closing_today,
          '成交量': turnovers[i].volumn,
          '漲跌': turnovers[i].change,
          '漲跌幅': turnovers[i].quote_change,
          '日期': turnovers[i].date
        }
      }
      alasql("SELECT * INTO XLSX( 'stocks.xlsx', {headers:true} ) FROM ?", [ exportStocks ] );
    },
    desc: function(sortItem, dataList) {
      dataList = dataList.sort(function (a, b) {
        return b[sortItem] > a[sortItem] ? 1 : -1;
      });
      return dataList;
    },
    asc: function(sortItem, dataList) {
      dataList = dataList.sort(function (a, b) {
        return a[sortItem] > b[sortItem] ? 1 : -1;
      });
      return dataList;
    }
  }
});
