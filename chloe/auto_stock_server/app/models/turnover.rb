class Turnover < ActiveRecord::Base
  require_relative '../../API/crawler.rb'

  attr_accessible :number, :name, :hyper_link, :opening_price, :highest_price, :lowest_price,
                  :closing_yesterday, :closing_today, :volumn, :change, :quote_change, :date

  # insert data to database
  def self.insert_to_db
    turnovers = Crawler.crawl_turnovers

    if !turnovers.empty?
      turnovers.each { |turnover| Turnover.create(turnover) }
    else
      puts ' No data to insert '
    end
  end

  # check whether need to insert turnovers to DB or not
  def self.check_for_insert_turnovers
    date_now = Time.new.in_time_zone.to_date.to_s
    last_data = Turnover.last

    if !last_data.blank?
      date_last_data = last_data[:date]

      if date_now == date_last_data
        puts ' Data is same '
        false
      else
        puts ' Data is different '
        true
      end
    else
      puts ' There is no data in DB '
      true
    end
  end
end
