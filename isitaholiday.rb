require 'rubygems'
require 'bundler'
Bundler.setup
require 'sinatra'
require 'sep_holidays'

get '/' do
 return "Yep!" if Date.today.is_sep_holiday?

 next_holiday = Date.today.next_sep_holiday

 return "Nope, but it'll be #{next_holiday.name} in #{(next_holiday.date - Date.today).to_i} days!"
end

