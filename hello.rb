require 'rubygems'
require 'sinatra'

get '/' do
  name = @params[:name] 
  if name
    result = "<p>Hello " + name + "!</p>"
  else
    result = "<p>Greetings Alien</p>"
  end
  result += "<img width='50%' height='50%' src='ultrasaurus.png'/>"
  result
end

# this is a test page
get '/test' do
  output = "<p>params is a #{@params.class}</p>"
  params.keys.each do |k|
    output += "<p>I have a #{k} param</p>"
  end
  output
end


# this is the 'hi' page
get '/hi' do
  name = @params[:name] + " "
  num = @params[:num].to_i
  "Hello " + (name * num)
end

get '/bye' do
  "Goodbye"
end
