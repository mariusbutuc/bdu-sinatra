path = File.expand_path("../", __FILE__)

require 'rubygems'
require 'sinatra'
require 'data_mapper'
require 'haml'
require File.dirname(__FILE__) + '/models.rb'
require File.dirname(__FILE__) + '/helpers.rb'
require "#{path}/app"

run Sinatra::Application