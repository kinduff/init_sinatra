#!/usr/bin/env ruby
require 'sinatra/activerecord'
require_relative 'config/environments'
require_relative 'config/routes'
require_relative 'helpers'
require_all 'models'

class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  helpers Sinatra::App::Helpers
  register Sinatra::App::Routes
  after do
    ActiveRecord::Base.connection.close
  end
end
