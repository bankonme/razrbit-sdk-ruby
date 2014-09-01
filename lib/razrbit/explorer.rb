require 'razrbit/http'

module Razrbit
  class Explorer < HTTP
    def block(block_hash: nil)
      uri = create_uri 'explorer/block'

      form_data = {
        'blockHash' => block_hash
      }

      post(uri, form_data)
    end

    def transaction(transaction_hash: nil)
      uri = create_uri 'explorer/transaction'

      form_data = {
        'transactionHash' => transaction_hash
      }

      post(uri, form_data)
    end

    def address(address: nil)
      uri = create_uri 'explorer/address'

      form_data = {
        'address' => address
      }

      post(uri, form_data)
    end

    def address_unspent_outputs(address: nil)
      uri = create_uri 'explorer/addressUnspentOutputs'

      form_data = {
        'address' => address
      }

      post(uri, form_data)
    end
  end
end
