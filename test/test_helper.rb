ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  Capybara.javascript_driver = :poltergeist
end

  # Add more helper methods to be used by all tests here...
class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Assertions
end

