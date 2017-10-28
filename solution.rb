require 'sinatra'

class Counter

  attr_accessor :count

  def initialize
    @count = 0
  end

  def addition
    @count += 1
  end
end

x = Counter.new

get '/' do
  @total = x.count
  erb :index
end

post '/' do
  @total = x.addition
  redirect '/'
end
