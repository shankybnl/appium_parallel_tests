require 'rubygems'

# Integration module, helps in booting up and access to env setting across codebase
module Integration
  class << self
    # @!attribute config
    #   @return [Hash] environment aware test suite configuration
    #   @see config/config.yml
    attr_accessor :config

  # @return [String] root filepath of test suite, can detect it correctly by itself
    def root
      @root ||= ENV["INTEGRATION_ROOT"] || File.dirname(File.expand_path('../', __FILE__))
    end

  # @return [String] execution_env string - uses set value of ENV["INTEGRATION_EXECUTION_ENV"], often passed through CLI
    def execution_env
      @execution_env ||= ENV["INTEGRATION_EXECUTION_ENV"] || "local"
    end

  end
end

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= "#{Integration.root}/Gemfile"
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])


Bundler.require(:default, Integration.execution_env) if defined?(Bundler)
