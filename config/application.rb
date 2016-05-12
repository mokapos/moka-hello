require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'dotenv'

Bundler.require(*Rails.groups)
Dotenv.load

module ApiClient
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
  end
end
