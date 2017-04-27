require 'byebug'
require 'operators-serializer'

RSpec.configure do |config|
  config.order = :random
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end
