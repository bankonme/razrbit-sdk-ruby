require 'razrbit/http'

module Razrbit
  class Network < HTTP
    def get_difficulty
      uri = create_uri 'network/getDifficulty'

      post(uri)
    end

    def push_transaction(transaction: nil)
      uri = create_uri 'network/pushTransaction'

      form_data = {
        'transaction' => transaction
      }

      post(uri, form_data)
    end
  end
end
