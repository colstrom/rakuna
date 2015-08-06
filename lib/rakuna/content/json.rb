require 'multi_json'

module Rakuna
  module Content
    # Mixin to add JSON support to resources
    module JSON
      def content_types_provided
        [['application/json', :to_json]]
      end

      def content_types_accepted
        [['application/json', :from_json]]
      end

      def from_json
        input
      end

      def payload
        @payload ||= MultiJson.load request.body.to_s
      end

      def to_json
        MultiJson.dump output
      end
    end
  end
end
