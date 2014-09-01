require 'net/https'
require 'uri'

module Razrbit
  class HTTP
    attr_accessor :app_id, :app_secret

    def initialize(app_id: nil, app_secret: nil)
      @app_id = app_id
      @app_secret = app_secret
    end

    protected

    def create_uri(endpoint)
      site = 'https://api.razrbit.com/api/v1/'
      uri = URI.join(site, endpoint)
    end

    def create_https(uri)
      https = Net::HTTP.new(uri.hostname, uri.port)
      https.use_ssl = true
      https
    end

    def app_form_data
      {
        'appId' => app_id,
        'appSecret' => app_secret,
      }
    end

    def create_post(uri, data = {})
      form_data = app_form_data.update(data)
      request = Net::HTTP::Post.new(uri.path)
      request.set_form_data(form_data)
      request
    end

    def post(uri, form_data = {})
      https = create_https uri
      request = create_post(uri, form_data)
      response = https.request request
    end
  end
end
