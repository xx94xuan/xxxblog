module Decorators
  module Status

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def published
        where(published: true)
      end
    end
  end
end
