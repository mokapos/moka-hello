require File.expand_path('../boot', __FILE__)

# require 'rails/all'
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "active_job/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"
require 'dotenv'

Bundler.require(*Rails.groups)
Dotenv.load

module ApiClient
  class Application < Rails::Application
    # config.active_record.raise_in_transactional_callbacks = true
  end
end
