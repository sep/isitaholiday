require 'rubygems'
require 'bundler'
Bundler.setup
require 'sinatra'
require 'active_support/core_ext'
require 'sep_holidays'

get '/' do
 return "Yep!" if Date.today.is_sep_holiday?

 next_holiday = Date.today.next_sep_holiday

 num_days = (next_holiday.date - Date.today).to_i
 days_text = pluralize("day", num_days)
 return "Nope, but it'll be #{next_holiday.name} in #{num_days} #{days_text}!"
end

def pluralize(text, num)
  return text if num == 1
  return text.pluralize
end

