require 'rubygems'
require 'sinatra'

get '/hi' do
  name = @params[:name] + " "
  num = @params[:num].to_i
  "Hello " + (name * num)
end

get '/bye' do
  "Goodbye"
end
