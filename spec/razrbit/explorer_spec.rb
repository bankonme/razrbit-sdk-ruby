require 'spec_helper'

module Razrbit
  describe Explorer do
    let(:explorer) do
      Explorer.new(app_id: ENV['RAZRBIT_APP_ID_TEST'],
                   app_secret: ENV['RAZRBIT_APP_SECRET_TEST'])
    end

    it "#block responds with JSON" do
      response = explorer.block(block_hash: '000000000000000035bc38f39b0aec2217a359fd5165ee0dc972009a2052876b')

      expected_json = /{"hash":.+}/
      expect(response.body).to match(expected_json)
    end

    it "#transaction responds with JSON" do
      response = explorer.transaction(transaction_hash: '79852bb64be7f4cc2f3d13fcc235b0fe9230571a7e5ff20d686cded38db91e15')

      expected_json = /{"txid":.+}/
      expect(response.body).to match(expected_json)
    end

    it "#address responds with JSON" do
      response = explorer.address(address: '1FzLkNQoZh937NRaJorED6Z6JiScMFjgDy')

      expected_json = /{"addrStr":.+}/
      expect(response.body).to match(expected_json)
    end

    it "#addressUnspentOutputs responds with JSON" do
      response = explorer.address_unspent_outputs(address: '1FzLkNQoZh937NRaJorED6Z6JiScMFjgDy')

      expected_json = /{"address":.+}/
      expect(response.body).to match(expected_json)
    end
  end
end
