ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    #config.include Devise::Test::ControllerHelpers, type: :controller
    #config.include Devise::TestHelpers, type: :view

    # Setup all environments with an example hostname and port
    host! 'localhost'
    port! 3000

    # Add more helper methods to be used by all tests here...
  end
end
