# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Michaelfelzpc::Application.initialize!

# Allows access to config.yml by calling APP_CONFIG['item']
# anywhere in the code
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")