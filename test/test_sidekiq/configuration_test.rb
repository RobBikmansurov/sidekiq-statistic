require 'minitest_helper'

module Sidekiq
  module Statistic
    describe 'Configuration' do
      describe '#log_file' do
        it "default value is 'log/sidekiq.log'" do
          log_file = Configuration.new.log_file
          assert_equal 'log/sidekiq.log', log_file
        end
      end

      describe '#log_file=' do
        it 'can set value' do
          config = Configuration.new
          config.log_file = 'test/sidekiq.log'
          assert_equal 'test/sidekiq.log', config.log_file
        end
      end
    end
  end
end
