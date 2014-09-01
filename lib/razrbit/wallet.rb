require 'razrbit/http'

module Razrbit
  class Wallet < HTTP
    def create_new_address
      uri = create_uri 'wallet/createNewAddress'
      post(uri)
    end

    def send_amount(from_address_private_key: nil, to_address: nil, amount: nil)
      uri = create_uri 'wallet/sendAmount'

      form_data = {
        'fromAddressPrivateKey' => from_address_private_key,
        'toAddress' => to_address,
        'amount' => amount
      }

      post(uri, form_data)
    end

    def balance_from_address(address: address)
      uri = create_uri 'wallet/getBalanceFromAddress'

      form_data = {
        'address' => address
      }

      post(uri, form_data)
    end

  end
end
