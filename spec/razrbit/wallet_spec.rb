require 'spec_helper'

module Razrbit
  describe Wallet do
    let(:wallet) do
      Wallet.new(app_id: ENV['RAZRBIT_APP_ID_TEST'],
                 app_secret: ENV['RAZRBIT_APP_SECRET_TEST'])
    end

    it "#create_new_address responds with JSON" do
      response = wallet.create_new_address

      expected_json = /{"address":".+","privateKey":".+"}/
      expect(response.body).to match(expected_json)
    end

    it "#send_amount responds with JSON" do
      response = wallet.send_amount(from_address_private_key: '5exampleFromAddressPrivateKey',
                                    to_address: '1exampleToAddress',
                                    satoshi_amount: 123456)

      expected_json = /{"dummy":"yes","result":"OK"}/
      expect(response.body).to match(expected_json)
    end

    it "#balance_from_address responds with JSON" do
      address = '12sENwECeRSmTeDwyLNqwh47JistZqFmW8'
      response = wallet.balance_from_address(address: address)

      expected_json = /{"balance":\d+}/
      expect(response.body).to match(expected_json)
    end
    
  end
end
