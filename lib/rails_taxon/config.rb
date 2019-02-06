require 'active_support/configurable'

module RailsTaxon
  include ActiveSupport::Configurable

  configure do |config|
    config.admin_class = 'AdminController'
    config.my_class = 'MyController'
    config.app_class = 'ApplicationController'
    config.disabled_models = []
  end

end