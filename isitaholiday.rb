require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sep_holidays'

get '/' do
 return "yep" if Date.today.is_sep_holiday?
 return "nope"
end

