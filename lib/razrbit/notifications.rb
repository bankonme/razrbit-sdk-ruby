require 'razrbit/http'

module Razrbit
  class Notifications < HTTP
    def address(address: nil, email: nil)
      uri = create_uri 'notifications/address'

      form_data = {
        'address' => address,
        'email' => email
      }

      post(uri, form_data)
    end

    def block(block_hash: nil, email: nil)
      uri = create_uri 'notifications/block'

      form_data = {
        'blockHash' => block_hash,
        'email' => email
      }

      post(uri, form_data)
    end

    def transaction(transaction_hash: nil, email: nil)
      uri = create_uri 'notifications/transaction'

      form_data = {
        'transactionHash' => transaction_hash,
        'email' => email
      }

      post(uri, form_data)
    end
  end
end
