require 'rails_helper'
require_relative '../../../API/crawler.rb'

RSpec.describe 'turnovers/index.html.slim', type: :view do
  describe '' do
    before(:each) do
      @turnovers = FactoryGirl.build_list(:turnover, 2)
      assign(:turnovers, @turnovers)
      render
    end

    it 'should have have these attributes' do
      expect(response).to have_css("div[ng-app='turnoversApp'][ng-controller='TurnoverCtrl']", class: 'turnovers')
    end
  end

  describe 'search directive' do
    before(:each) do
      render
    end

    it 'should exist' do
      expect(response).to have_css('search')
    end

    it 'should have have these attributes' do
      expect(response).to have_css("search[stock-number='number'][search-date='date'][search-function='search()'][export-function='export()']")
    end
  end

  describe 'stock-table directive' do
    before(:each) do
      render
    end

    it 'should exist' do
      expect(response).to have_css('stock-table')
    end

    it 'should have have these attributes' do
      expect(response).to have_css("stock-table[desc='desc'][asc='asc'][turnovers='turnovers'][sortdesc='sortDesc()'][sortasc='sortAsc()']")
    end
  end
end
