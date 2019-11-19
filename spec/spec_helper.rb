# Load RSpec and Capybara
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

# Configure RSpec
RSpec.configure do |config|
  # Mixin the Capybara functionality into Rspec
  config.include Capybara::DSL
  config.order = 'default'
end

# Define the application we're testing
def app
  # Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end

# Configure Capybara to test against the application above.
Capybara.app = app

# psuedocode for writing the test for the GET method on / (index):
# When a user visits '/'
#   they should see a greeting
#   they should see a form with a name field
# When a user submits the greeting form
#   they should fill in the name with "Avi"
#   they should click submit
#   they should see "Hi Avi, it's nice to meet you!"
