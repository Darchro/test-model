module TestModel
  module Configuration
    class DB
      def self.setup(options={})
        TestModel::Base.establish_connection options
      end
    end
  end
end