# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Blastoise::Application.initialize!

credentials = YAML.load_file("#{Rails.root}/config/credentials.yml")
ENV['r_query'] = credentials['r_query']
