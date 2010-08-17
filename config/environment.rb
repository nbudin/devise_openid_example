# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'devise', :version => '1.0.8'
  config.gem 'rails-footnotes', :version => '3.6.5'
  config.gem 'devise_openid_authenticatable', :version => '1.0.0.alpha5'

  require 'warden/manager'
  config.middleware.use "Warden::Manager"
  config.middleware.insert_before "Warden::Manager", "Rack::OpenID"

  config.time_zone = 'UTC'
  config.i18n.default_locale = :en
end
