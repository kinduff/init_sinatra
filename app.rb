#!/usr/bin/env ruby
require 'sinatra/activerecord'
require './config/environments'

class App < Sinatra::Base
  get '/' do
    haml :index
  end

  after do
    ActiveRecord::Base.connection.close
  end
end
