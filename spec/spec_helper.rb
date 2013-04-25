require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'

Zonebie.set_random_timezone

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.use_transactional_fixtures = false

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.order = "random"

  Capybara.javascript_driver = :webkit

  config.include RSpec::Rails::RequestExampleGroup, type: :request, example_group: {
    file_path: /spec\/acceptance\/.*_spec/
  }

  config.include Capybara::DSL, example_group: {
    file_path: /spec\/acceptance\/.*_spec/
  }

  config.include Capybara::RSpecMatchers, example_group: {
    file_path: /spec\/acceptance\/.*_spec/
  }
end
