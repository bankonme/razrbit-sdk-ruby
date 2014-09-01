require 'spec_helper'

module Razrbit
  describe Notifications do
    let(:notifications) do
      Notifications.new(app_id: ENV['RAZRBIT_APP_ID_TEST'],
                  app_secret: ENV['RAZRBIT_APP_SECRET_TEST'])
    end

    it "#address responds with JSON" do
      response = notifications.address(address: '1FzLkNQoZh937NRaJorED6Z6JiScMFjgDy',
                                 email: 'example@example.com')

      expected_json = /{"dummy":"yes","result":"OK"}/
      expect(response.body).to match(expected_json)
    end

    it "#blocks responds with JSON" do
      response = notifications.block(block_hash: '000000000000000035bc38f39b0aec2217a359fd5165ee0dc972009a2052876b',
                                email: 'example@example.com')

      expected_json = /{"dummy":"yes","result":"OK"}/
      expect(response.body).to match(expected_json)
    end

    it "#transactions responds with JSON" do
      response = notifications.transaction(transaction_hash: '79852bb64be7f4cc2f3d13fcc235b0fe9230571a7e5ff20d686cded38db91e15',
                                      email: 'example@example.com')

      expected_json = /{"dummy":"yes","result":"OK"}/
      expect(response.body).to match(expected_json)
    end
  end
end
