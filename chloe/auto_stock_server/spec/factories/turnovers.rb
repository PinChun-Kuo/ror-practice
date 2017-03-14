FactoryGirl.define do
  factory :turnover, class: 'Turnover' do
    number 2330
    name '台積電'
    hyper_link 'http://stock.wearn.com/a2330.html'
    opening_price 190.0
    highest_price 190.5
    lowest_price 189.0
    closing_yesterday 189.0
    closing_today 189.5
    volumn 20_373
    change '0.50'
    quote_change '0.26%'
    date Time.new.in_time_zone.to_date.to_s
  end

  factory :turnover_old, class: 'Turnover' do
    number 2330
    name '台積電'
    hyper_link 'http://stock.wearn.com/a2330.html'
    opening_price 190.0
    highest_price 190.5
    lowest_price 189.0
    closing_yesterday 189.0
    closing_today 189.5
    volumn 20_373
    change '0.50'
    quote_change '0.26%'
    date '2017-02-13'
  end
end
