require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @name = params[:name].to_s
    @rev = @name.reverse
    "#{@rev}"
  end

  get "/square/:number" do
    @num = params[:number]
    @x = @num.to_i
    @square = @x**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    @num.times {puts "#{@phrase}"}
  end

end