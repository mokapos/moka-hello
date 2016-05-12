require 'doorkeeper'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :doorkeeper, ENV['MOKA_APP_ID'], ENV['MOKA_SECRET_KEY']
end
