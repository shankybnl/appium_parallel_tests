# Boot up!
require File.expand_path('../boot', __FILE__)
require 'yaml'

# Load and set config according to the env
config = YAML.load_file("#{Integration.root}/config/config.yml")
Integration.config = config