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
  end

end