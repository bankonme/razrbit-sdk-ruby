require 'byebug'

require 'razrbit'

unless ENV['RAZRBIT_APP_ID_TEST']
  puts 'RAZRBIT_APP_ID_TEST needs to be set'
  exit 1
end

unless ENV['RAZRBIT_APP_SECRET_TEST']
  puts 'RAZRBIT_APP_SECRET_TEST needs to be set'
  exit 1
end

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
