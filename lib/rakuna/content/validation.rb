module Rakuna
  module Content
    # Mixin to handle payload validation.
    module Validation
      def malformed_request?
        if request.post?
          false unless valid?
        else
          false
        end
      end
    end
  end
end
