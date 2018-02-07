require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Mokaprovider < OmniAuth::Strategies::OAuth2
      option :name, 'moka'
      option :client_options, {
        site:          ENV['MOKA_CONNECT_PROVIDER'],
        authorize_url: "#{ENV['MOKA_CONNECT_PROVIDER']}/oauth/authorize"
      }

      uid {
        raw_info['id']
      }

      info do
        {
          email: raw_info['email'],
          full_name: raw_info['full_name'],
          business_id: raw_info['business_id'],
          outlet_ids: raw_info['outlet_ids']
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/v1/profile/self').parsed
      end

    end
  end
end
