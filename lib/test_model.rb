require "test_model/version"
require "bundler/setup"
require "active_support/all"
require "active_record"

TestModel::LIB_PATH = File.dirname(File.absolute_path(__FILE__))

require_relative "test_model/version"
require_relative "test_model/models/base"

Dir.glob(TestModel::LIB_PATH + "/test_model/configurations/**/*.rb").each do |f|
  puts f
  require f
end
Dir.glob(TestModel::LIB_PATH + "/test_model/models/*.rb").each do |f|
  puts f
  require f
end
Dir.glob(TestModel::LIB_PATH + "/test_model/models/**/*").select{|d| File.directory?(d) }.sort.each{|d| Dir.glob(File.join(d, "*.rb")).each do |f|
    puts f
    require f
  end
 }
