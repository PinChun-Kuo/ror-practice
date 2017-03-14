# crawl data from web page
class Crawler
  require 'nokogiri'
  # open url
  require 'open-uri'

  DATA_COUNT = 50

  def self.crawl_turnovers
    # get page parsing html data after encoding
    doc = parse_html
    nodes = doc.css('.stockalllistbg1, .stockalllistbg2')

    turnovers = nodes.map do |node|
      childs = node.css('> td')
      hyper_link = childs[2].css('> a')[0]['href']
      font_tag = childs[9].css('font')[1]

      change =
        if font_tag
          if font_tag['color'].split('#')[1] == 'ec008c'
            childs[9].css('font')[1].text.gsub(/[[:space:]]/, '')
          else
            '-' + childs[9].css('font')[1].text.gsub(/[[:space:]]/, '')
          end
        else
          0
        end

      {
        number: childs[1].text.gsub(/[[:space:]]/, '').to_i,
        name: childs[2].text.gsub(/[[:space:]]/, '').to_s,
        hyper_link: hyper_link.to_s,
        opening_price: childs[3].text.gsub(/[[:space:]]/, '').to_f,
        highest_price: childs[4].text.gsub(/[[:space:]]/, '').to_f,
        lowest_price: childs[5].text.gsub(/[[:space:]]/, '').to_f,
        closing_yesterday: childs[6].text.gsub(/[[:space:]]/, '').to_f,
        closing_today: childs[7].text.gsub(/[[:space:]]/, '').to_f,
        volumn: childs[8].text.gsub(/[[:space:]]/, '').split(',').join.to_i,
        change: change.to_f,
        quote_change: childs[10].text.gsub(/[[:space:]]/, '').to_s,
        date: Time.new.in_time_zone.to_date.to_s
      }
    end
    turnovers.first(DATA_COUNT)
  end

  def self.parse_html
    html = open('http://stock.wearn.com/qua.asp').read
    charset = 'big5'
    html.force_encoding(charset)
    html.encode!('utf-8', undef: :replace, replace: '?', invalid: :replace)
    Nokogiri::HTML.parse html
  end
end
