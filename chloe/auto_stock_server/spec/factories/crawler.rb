FactoryGirl.define do
  factory :crawler do
    html '<!DOCTYPE html>
    <html>
    <head></head>
    <body>
      <tr class="stockalllistbg2">
        <td>1</td>
    	  <td>2371</td>
        <td><a href="http://stock.wearn.com/a2371.html"><font size="3">大同</font></a></td>
        <td align="right">16.55&nbsp;&nbsp;</td>
        <td align="right">16.70&nbsp;&nbsp;</td>
        <td align="right">14.85&nbsp;&nbsp;</td>
        <td align="right">
          16.45&nbsp;&nbsp;    </td>
        <td align="right">15.20&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">196,561&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#009900>▼</font>          </td>
              <td style="border:none">
                <font color=#009900>1.25</font></td>
            </tr>
          </table></td>
        <td align="right">-7.60%&nbsp;&nbsp;</td>
      </tr>

      <tr class="stockalllistbg1">
        <td>2</td>
    	  <td>2448</td>
        <td><a href="http://stock.wearn.com/a2448.html"><font size="3">晶電</font></a></td>
        <td align="right">29.10&nbsp;&nbsp;</td>
        <td align="right">29.40&nbsp;&nbsp;</td>
        <td align="right">27.45&nbsp;&nbsp;</td>
        <td align="right">
          28.20&nbsp;&nbsp;    </td>
        <td align="right">27.70&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">85,195&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#009900>▼</font>          </td>
              <td style="border:none">
                <font color=#009900>0.50</font></td>
            </tr>
          </table></td>
        <td align="right">-1.77%&nbsp;&nbsp;</td>
      </tr>

      <tr class="stockalllistbg2">
        <td>3</td>
    	  <td>2609</td>
        <td><a href="http://stock.wearn.com/a2609.html"><font size="3">陽明</font></a></td>
        <td align="right">6.25&nbsp;&nbsp;</td>
        <td align="right">6.60&nbsp;&nbsp;</td>
        <td align="right">6.25&nbsp;&nbsp;</td>
        <td align="right">
          6.00&nbsp;&nbsp;    </td>
        <td align="right">6.60&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">81,596&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#ec008c>▲</font>          </td>
              <td style="border:none">
                <font color=#ec008c>0.60</font></td>
            </tr>
          </table></td>
        <td align="right">10.00%&nbsp;&nbsp;</td>
      </tr>

      <tr class="stockalllistbg1">
        <td>4</td>
    	  <td>6116</td>
        <td><a href="http://stock.wearn.com/a6116.html"><font size="3">彩晶</font></a></td>
        <td align="right">8.00&nbsp;&nbsp;</td>
        <td align="right">8.00&nbsp;&nbsp;</td>
        <td align="right">7.80&nbsp;&nbsp;</td>
        <td align="right">
          8.08&nbsp;&nbsp;    </td>
        <td align="right">7.83&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">60,967&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#009900>▼</font>          </td>
              <td style="border:none">
                <font color=#009900>0.25</font></td>
            </tr>
          </table></td>
        <td align="right">-3.09%&nbsp;&nbsp;</td>
      </tr>
    </body>
    </html>'

    html_with_positive_stock_change '<!DOCTYPE html>
    <html>
    <head></head>
    <body>
      <tr class="stockalllistbg2">
        <td>1</td>
        <td>2405</td>
        <td><a href="http://stock.wearn.com/a2405.html"><font size="3">浩鑫</font></a></td>
        <td align="right">10.05&nbsp;&nbsp;</td>
        <td align="right">10.95&nbsp;&nbsp;</td>
        <td align="right">9.99&nbsp;&nbsp;</td>
        <td align="right">
          9.96&nbsp;&nbsp;    </td>
        <td align="right">10.95&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">100,549&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#ec008c>▲</font>          </td>
              <td style="border:none">
                <font color=#ec008c>0.99</font></td>
            </tr>
          </table></td>
        <td align="right">9.94%&nbsp;&nbsp;</td>
      </tr>

      <tr class="stockalllistbg1">
        <td>2</td>
        <td>2448</td>
        <td><a href="http://stock.wearn.com/a2448.html"><font size="3">晶電</font></a></td>
        <td align="right">30.50&nbsp;&nbsp;</td>
        <td align="right">31.30&nbsp;&nbsp;</td>
        <td align="right">29.45&nbsp;&nbsp;</td>
        <td align="right">
          29.30&nbsp;&nbsp;    </td>
        <td align="right">29.45&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">82,059&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#ec008c>▲</font>          </td>
              <td style="border:none">
                <font color=#ec008c>0.15</font></td>
            </tr>
          </table></td>
        <td align="right">0.51%&nbsp;&nbsp;</td>
      </tr>
    </body>
    </html>'

    html_with_negative_stock_change '<!DOCTYPE html>
    <html>
    <head></head>
    <body>
      <tr class="stockalllistbg2">
        <td>13</td>
        <td>6116</td>
        <td><a href="http://stock.wearn.com/a6116.html"><font size="3">彩晶</font></a></td>
        <td align="right">7.86&nbsp;&nbsp;</td>
        <td align="right">7.88&nbsp;&nbsp;</td>
        <td align="right">7.71&nbsp;&nbsp;</td>
        <td align="right">
          7.85&nbsp;&nbsp;    </td>
        <td align="right">7.72&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">32,563&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#009900>▼</font>          </td>
              <td style="border:none">
                <font color=#009900>0.13</font></td>
            </tr>
          </table></td>
        <td align="right">-1.66%&nbsp;&nbsp;</td>
      </tr>

      <tr class="stockalllistbg1">
        <td>14</td>
        <td>2317</td>
        <td><a href="http://stock.wearn.com/a2317.html"><font size="3">鴻海</font></a></td>
        <td align="right">89.80&nbsp;&nbsp;</td>
        <td align="right">90.70&nbsp;&nbsp;</td>
        <td align="right">89.80&nbsp;&nbsp;</td>
        <td align="right">
          90.50&nbsp;&nbsp;    </td>
        <td align="right">90.30&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">31,447&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                <font color=#009900>▼</font>          </td>
              <td style="border:none">
                <font color=#009900>0.20</font></td>
            </tr>
          </table></td>
        <td align="right">-0.22%&nbsp;&nbsp;</td>
      </tr>
    </body>
    </html>'

    html_with_zero_stock_change '<!DOCTYPE html>
    <html>
    <head></head>
    <body>
      <tr class="stockalllistbg2">
        <td>1</td>
      	<td>2409</td>

        <td><a href="http://stock.wearn.com/a2409.html"><font size="3">友達</font></a></td>
        <td align="right">12.25&nbsp;&nbsp;</td>
        <td align="right">12.30&nbsp;&nbsp;</td>
        <td align="right">12.10&nbsp;&nbsp;</td>
        <td align="right">
          12.20&nbsp;&nbsp;    </td>
        <td align="right">12.20&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">75,381&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                ─          </td>
              <td style="border:none">
                0</td>
            </tr>
          </table></td>
        <td align="right">0.00%&nbsp;&nbsp;</td>
      </tr>

      <tr class="stockalllistbg1">
        <td>2</td>
    	  <td>2891</td>
        <td><a href="http://stock.wearn.com/a2891.html"><font size="3">中信金</font></a></td>
        <td align="right">18.45&nbsp;&nbsp;</td>
        <td align="right">18.55&nbsp;&nbsp;</td>
        <td align="right">18.30&nbsp;&nbsp;</td>
        <td align="right">
          18.45&nbsp;&nbsp;    </td>
        <td align="right">18.45&nbsp;&nbsp;</td>
        <td align="right"><font color="#0000FF">66,622&nbsp;&nbsp;</font></td>
        <td><table border="0" width="100%" style="border:none">
            <tr>
              <td style="font-size:13px;border:none">
                ─          </td>
              <td style="border:none">
                0</td>
            </tr>
          </table></td>
        <td align="right">0.00%&nbsp;&nbsp;</td>
      </tr>
    </body>
    </html>'
  end
end
