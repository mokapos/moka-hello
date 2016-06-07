require 'moka'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :mokaprovider, ENV['MOKA_APP_ID'], ENV['MOKA_SECRET_KEY'], { :provider_ignores_state => true }
end
