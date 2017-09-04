require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StadiumApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.assets.paths << Rails.root.join("node_modules", "uikit")

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Don't generate system test files.
    config.generators.system_tests = nil

    config.npm.enable_watch = Rails.env.development?

    # Command to install dependencies
    config.npm.install = ["npm install"]

    # Command to build production assets
    config.npm.build = ["npm run build"]

    # Command to start a file watcher
    config.npm.watch = ["npm run start"]

    # The commands are arrays; you may add more commands as needed:
    config.npm.watch = [
      "npm run webpack:start",
      "npm run brunch:start"
    ]

    # If 'true', runs 'npm install' on 'rake assets:precompile'. (v1.6.0+)
    # If you disable this, you'll need to run `npm install` yourself.
    # This is generally desired, but you may set this to false when
    # deploying to Heroku to speed things up.
    # config.npm.install_on_asset_precompile = true

    # If 'true', runs 'npm install' on 'rails server'. (v1.7.0+)
    # If you disable this, you'll need to run `npm install` yourself.
    config.npm.install_on_rails_server = true
  end
end
