require 'webmachine/resource'

module Rakuna
  module Resource
    # Item Resources allow specific items to be fetched/deleted/replaced.
    class Item < Webmachine::Resource
      def allowed_methods
        %w(HEAD GET PUT DELETE)
      end
    end
  end
end
