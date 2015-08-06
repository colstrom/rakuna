require 'webmachine/resource'

module Rakuna
  module Resource
    # Action Resources perform tasks.
    class Action < Webmacine::Resource
      def allowed_methods
        %w(POST)
      end

      def process_post
        input
        true
      end
    end
  end
end
