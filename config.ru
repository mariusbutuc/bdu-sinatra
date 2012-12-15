path = File.expand_path("../", __FILE__)

require 'rubygems'
require 'sinatra'
require 'data_mapper'
require File.dirname(__FILE__) + '/models.rb'
require 'haml'
require "#{path}/app"

run Sinatra::Application