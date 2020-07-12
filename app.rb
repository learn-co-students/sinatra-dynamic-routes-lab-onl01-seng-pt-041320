require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @name = params[:name] 
    @name.reverse
  end 

  get "/square/:number" do
    @num = params[:number].to_i
    @sqnum = @num * @num 
    @sqnum.to_s
  end 
  
  get "/say/:number/:phrase" do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @sum = @phrase * @number
    @sum
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @sum = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}." 
    @sum 
  end 

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i 
    if @operation == "add"
      @sum = @num1 + @num2
      @sum.to_s
    elsif @operation == "subtract"  
      @sum = @num1 - @num2 
      @sum.to_s 
    elsif @operation == "multiply"  
      @sum = @num1 * @num2 
      @sum.to_s 
    elsif @operation == "divide"  
      @sum = @num1 / @num2 
      @sum.to_s 
    end 
  end 

end