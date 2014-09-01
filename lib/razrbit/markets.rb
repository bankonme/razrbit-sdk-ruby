require 'razrbit/http'

module Razrbit
  class Markets < HTTP
    def price(currency_code: nil)
      uri = create_uri 'markets/price'

      form_data = {
        'currencyCode' => currency_code
      }

      post(uri, form_data)
    end

    def day_price(currency_code: nil)
      uri = create_uri 'markets/dayPrice'

      form_data = {
        'currencyCode' => currency_code
      }

      post(uri, form_data)
    end

    def historical_price(currency_code: nil, date: nil)
      uri = create_uri 'markets/historicalPrice'

      form_data = {
        'currencyCode' => currency_code,
        'date' => date
      }

      post(uri, form_data)
    end
  end
end
