require 'rubygems'
require 'bundler'
Bundler.require
require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:css_location] = './public/css'
use Sass::Plugin::Rack
use Rack::Coffee, root: 'public', urls: '/js'
root = ::File.dirname(__FILE__)
require ::File.join( root, 'app' )
run App
