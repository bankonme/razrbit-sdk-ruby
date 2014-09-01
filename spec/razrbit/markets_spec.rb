require 'spec_helper'

module Razrbit
  describe Markets do
    let(:markets) do
      Markets.new(app_id: ENV['RAZRBIT_APP_ID_TEST'],
                  app_secret: ENV['RAZRBIT_APP_SECRET_TEST'])
    end

    it "#price responds with JSON" do
      response = markets.price(currency_code: 'USD')

      expected_json = /{"currencyCode":"USD","price":.+}/
      expect(response.body).to match(expected_json)
    end

    it "#day_price responds with JSON" do
      response = markets.day_price(currency_code: 'USD')

      expected_json = /{"currencyCode":"USD","dayPrice":.+}/
      expect(response.body).to match(expected_json)
    end

    it "#historical_price responds with JSON" do
      response = markets.historical_price(currency_code: 'USD',
                                          date: '2014-08-14')

      expected_json = /{"date":"2014-08-14","price":.+}/
      expect(response.body).to match(expected_json)
    end
  end
end
