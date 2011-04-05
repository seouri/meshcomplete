require "meshcomplete"
require "rails"
require "meshcomplete/action_view_extension"

module Meshcomplete
  class Engine < Rails::Engine
    config.mount_at = '/'

    initializer "check config" do |app|
      config.mount_at += '/'  unless config.mount_at.last == '/'
    end

    initializer 'meshcomplete' do |app|
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.send :include, Meshcomplete::ActionViewExtension
      end
    end
  end
end