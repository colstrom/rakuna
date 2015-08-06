require 'redis'

module Rakuna
  module Storage
    # Mixin to expose Redis to resources
    module Redis
      def redis
        @redis ||= Redis.new
      end
    end
  end
end
