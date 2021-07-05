require 'sinatra'
require_relative './app'

def app
    Rack::Builder.parse_file('config.ru').first
end

run Application