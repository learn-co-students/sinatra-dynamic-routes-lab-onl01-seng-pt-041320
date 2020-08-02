require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 
  
  get '/square/:number' do 
    @num = params[:number].to_i
    "#{@num ** 2}"
  end 
  
  get '/say/:number/:phrase' do
   @string = ""
      params[:number].to_i.times {@string += "#{params[:phrase]}\n"}
      "#{@string}"
  end 
  
   get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."}"
   end
   
    get "/:operation/:num1/:num2" do
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      @operation = params[:operation]
      if params[:operation] == "multiply"
      "#{@num1 * @num2}"
      elsif params[:operation] == "add"
      "#{@num1 + @num2}"
      elsif params[:operation] == "divide"
        "#{@num1 / @num2}"
      elsif params[:operation] == "subtract"
        "#{@num1 - @num2}"
      end
    end
end