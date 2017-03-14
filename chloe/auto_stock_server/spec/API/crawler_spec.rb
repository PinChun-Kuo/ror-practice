require 'rails_helper'
require_relative '../../API/crawler.rb'

describe 'crawler API' do
  describe 'constant' do
    it { expect(Crawler::DATA_COUNT).to eq(50) }
  end

  describe '.crawl_turnovers method' do
    before(:each) do
      html = FactoryGirl.attributes_for(:crawler)[:html]
      allow(Crawler).to receive(:parse_html).and_return(Nokogiri::HTML.parse(html))
    end

    context 'its return should' do
      subject { Crawler.crawl_turnovers }
      it { expect(subject).not_to be_empty }
      it { expect(subject).to be_instance_of(Array) }
    end

    context 'the format of data' do
      subject { Crawler.crawl_turnovers[1] }
      it { expect(subject[:number]).to be_kind_of(Integer) }
      it { expect(subject[:name]).to be_instance_of(String) }
      it { expect(subject[:hyper_link]).to be_instance_of(String) }
      it { expect(subject[:opening_price]).to be_instance_of(Float) }
      it { expect(subject[:highest_price]).to be_instance_of(Float) }
      it { expect(subject[:lowest_price]).to be_instance_of(Float) }
      it { expect(subject[:closing_yesterday]).to be_instance_of(Float) }
      it { expect(subject[:closing_today]).to be_instance_of(Float) }
      it { expect(subject[:volumn]).to be_kind_of(Integer) }
      it { expect(subject[:change]).to be_instance_of(Float) }
      it { expect(subject[:quote_change]).to be_instance_of(String) }
      it { expect(subject[:date]).to be_instance_of(String) }
    end

    context 'color of stock change' do
      context 'when it is red' do
        before(:each) do
          html = FactoryGirl.attributes_for(:crawler)[:html_with_positive_stock_change]
          allow(Crawler).to receive(:parse_html).and_return(Nokogiri::HTML.parse(html))
        end

        subject { Crawler.crawl_turnovers[1] }
        it { expect(subject[:change].to_f).to be > 0.0 }
      end

      context 'when it is green' do
        before(:each) do
          html = FactoryGirl.attributes_for(:crawler)[:html_with_negative_stock_change]
          allow(Crawler).to receive(:parse_html).and_return(Nokogiri::HTML.parse(html))
        end

        subject { Crawler.crawl_turnovers[1] }
        it { expect(subject[:change].to_f).to be < 0.0 }
      end

      context 'when it is not both red and green' do
        before(:each) do
          html = FactoryGirl.attributes_for(:crawler)[:html_with_zero_stock_change]
          allow(Crawler).to receive(:parse_html).and_return(Nokogiri::HTML.parse(html))
        end

        subject { Crawler.crawl_turnovers[1] }
        it { expect(subject[:change].to_f).to eq(0.0) }
      end
    end
  end
end
