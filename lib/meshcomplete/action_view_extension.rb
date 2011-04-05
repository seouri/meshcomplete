module Meshcomplete
  module ActionViewExtension
    extend ActiveSupport::Concern
    module InstanceMethods
      def meshcomplete
        '<div id="meshcomplete-box"></div>'.html_safe
      end
    end
  end
end