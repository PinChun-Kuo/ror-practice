require 'rails_helper'
require_relative '../../API/crawler.rb'

RSpec.describe Turnover, type: :model do
  describe '.insert_to_db' do
    before(:all) do
      Turnover.destroy_all
    end

    after(:all) do
      Turnover.destroy_all
    end

    before(:each) do
      @turnovers = FactoryGirl.create_list(:turnover, Crawler::DATA_COUNT)
      allow(Crawler).to receive(:crawl_turnovers).and_return(@turnovers)
    end

    it 'insert data to DB successful' do
      Turnover.last(50).each_with_index do |turnover, index|
        expect(turnover.number).to eq(@turnovers[index].number)
        expect(turnover.name).to eq(@turnovers[index].name)
        expect(turnover.hyper_link).to eq(@turnovers[index].hyper_link)
        expect(turnover.opening_price).to eq(@turnovers[index].opening_price)
        expect(turnover.highest_price).to eq(@turnovers[index].highest_price)
        expect(turnover.lowest_price).to eq(@turnovers[index].lowest_price)
        expect(turnover.closing_yesterday).to eq(@turnovers[index].closing_yesterday)
        expect(turnover.closing_today).to eq(@turnovers[index].closing_today)
        expect(turnover.volumn).to eq(@turnovers[index].volumn)
        expect(turnover.change).to eq(@turnovers[index].change)
        expect(turnover.quote_change).to eq(@turnovers[index].quote_change)
        expect(turnover.date).to eq(@turnovers[index].date)
      end
    end
  end

  describe '.check_for_insert_turnovers' do
    before(:all) do
      Turnover.destroy_all
    end

    after(:all) do
      Turnover.destroy_all
    end

    context 'when there is no data inside DB' do
      it 'should return true' do
        expect(Turnover.check_for_insert_turnovers).to eq(true)
      end
    end

    context 'when there is data inside DB' do
      context 'when the date of data inside DB is the same as today' do
        before(:each) do
          FactoryGirl.create_list(:turnover, Crawler::DATA_COUNT)
        end

        it 'should return false' do
          expect(Turnover.check_for_insert_turnovers).to eq(false)
        end
      end

      context 'when the date of data inside DB and today are different' do
        before(:each) do
          FactoryGirl.create_list(:turnover_old, Crawler::DATA_COUNT)
        end

        it 'should return false' do
          expect(Turnover.check_for_insert_turnovers).to eq(true)
        end
      end
    end
  end
end
