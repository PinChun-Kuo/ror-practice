require 'rails_helper'
require_relative '../../API/crawler.rb'

RSpec.describe TurnoversController, type: :controller do
  describe 'GET #index' do
    context 'when query data default successfully' do
      before(:each) do
        get :index
      end

      it { expect(response).to have_http_status(200) }
      it { expect(response).to render_template('index') }
    end
  end

  describe 'GET #search' do
    context 'when query data of specified stock number and date' do
      before(:each) do
        allow(controller).to receive(:date_init).and_return('2017-02-17')
        allow(controller).to receive(:number_init).and_return('2330')
        get :index, params: { number: 2330, date: '2017-02-17' }
      end

      it { expect(response).to have_http_status(200) }
      it { expect(response).to render_template('index') }
    end

    context 'when query data of specified date' do
      before(:each) do
        allow(controller).to receive(:date_init).and_return('2017-02-17')
        allow(controller).to receive(:number_init).and_return('null')
        get :index, params: { number: 'null', date: '2017-02-17' }
      end

      it { expect(response).to have_http_status(200) }
      it { expect(response).to render_template('index') }
    end

    context 'when query data of specified stock number over the years' do
      before(:each) do
        allow(controller).to receive(:date_init).and_return('null ')
        allow(controller).to receive(:number_init).and_return('2330')
        get :index, params: { number: 2330, date: 'null' }
      end

      it { expect(response).to have_http_status(200) }
      it { expect(response).to render_template('index') }
    end
  end

  describe '#date_init' do
    context 'when date is null' do
      it { expect(controller.date_init('null')).to eq(nil) }
    end

    context 'when date is not null' do
      it { expect(controller.date_init('2017-03-03')).to eq('2017-03-03') }
    end
  end

  describe '#number_init' do
    context 'when date is null' do
      it { expect(controller.number_init('null')).to eq(nil) }
    end

    context 'when date is not null' do
      it { expect(controller.number_init('24')).to eq('24') }
    end
  end
end
