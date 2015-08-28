require 'redis'

module Rakuna
  module Storage
    # Mixin to expose Redis to resources
    module Redis
      def redis_url
        @redis_host ||= ENV['REDIS_URL'] || ENV.fetch('REDIS_PORT', 'tcp://127.0.0.1:6379').sub('tcp://', 'redis://')
      end

      def redis
        @redis ||= ::Redis.new(url: redis_url)
      end
    end
  end
end
