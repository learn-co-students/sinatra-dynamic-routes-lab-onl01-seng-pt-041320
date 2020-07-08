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
    @phrase = params[:phrase]
    @phrase * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == 'add'
      @sum = @num1 + @num2
      @sum.to_s
    elsif @operation == 'subtract'
      @subt = @num1 - @num2
      @subt.to_s
    elsif @operation == 'multiply'
      @multi = @num1 * @num2
      @multi.to_s
    elsif @operation == 'divide'
      @div = @num1 / @num2
      @div.to_s
    end
  end


end