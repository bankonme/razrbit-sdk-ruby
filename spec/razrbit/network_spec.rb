require 'spec_helper'

module Razrbit
  describe Network do
    let(:network) do
      Network.new(app_id: ENV['RAZRBIT_APP_ID_TEST'],
                  app_secret: ENV['RAZRBIT_APP_SECRET_TEST'])
    end

    it "#get_difficulty responds with JSON" do
      response = network.get_difficulty

      expected_json = /{"difficulty":.+}/
      expect(response.body).to match(expected_json)
    end

    it "#push_transaction responds with JSON" do
      pending

      response = network.push_transaction(transaction: '')

      expected_json = /{"difficulty":.+}/
      expect(response.body).to match(expected_json)
    end
  end
end
