module Meshcomplete
  module ActionViewExtension
    extend ActiveSupport::Concern
    module InstanceMethods
      def meshcomplete
        '<div id="meshcomplete-box"><input id="meshcomplete" /><span id="meshcomplete-clear" title="Clear search">&times;</span><input type="hidden" id="meshcomplete-selected-ids"/></div><div id="meshcomplete-update"></div>'.html_safe
      end
    end
  end
end
