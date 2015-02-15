###########
## This file shoule be loaded with every spec file if you want to setup
## the context correctly and use available libraries. Put following 
## require statement at beginning of every spec file
## require 'spec_helper'
###########

#require 'rspec/retry'
# Load the application context

require File.expand_path('../../config/application', __FILE__)

# Some methods from lib/util.rb and additional supporting methods will go here

# Load the Util module
require File.expand_path('../../lib/util', __FILE__)

# To turn off execution of a spec, add :broken => true to its definition. See spec/broken.rb for example.
# RSpec.configure do |c|
#   c.filter_run_excluding :broken => true
#   c.verbose_retry = true #show retry status in spec process
#   c.default_retry_count = 1 #sets retry count for failed specs. Its default value is 1 which signifies no retry 
# end
