require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Doorkeeper < OmniAuth::Strategies::OAuth2
      option :name, 'moka'
      option :client_options, {
        site:          ENV['MOKA_HOST_PROVIDER'],
        authorize_url: "#{ENV['MOKA_HOST_PROVIDER']}/oauth/authorize"
      }

      uid {
        raw_info['id']
      }

      info do
        {
          email: raw_info['email'],
          full_name: raw_info['full_name']
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
