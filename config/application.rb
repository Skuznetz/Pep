require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pep
  class Application < Rails::Application

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru
    config.generators do |g|
g.test_framework :rspec,
 fixtures: false,
 view_specs: false,
 helper_specs: false,
 routing_specs: false
 end

  end
end
