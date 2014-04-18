require "simplecov"
SimpleCov.start

ENV['RACK_ENV'] = "test"

require 'sinatra'
require './app'
require 'rack/test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end
