module TestModel
  module Configuration
    class Log
      def self.setup(logger)
        TestModel::Base.logger = logger
      end
    end
  end
end
