require "meshcomplete"
require "rails"
require "meshcomplete/action_view_extension"

module Meshcomplete
  class Engine < Rails::Engine
    initializer 'meshcomplete' do |app|
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.send :include, Meshcomplete::ActionViewExtension
      end
    end
  end
end