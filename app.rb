require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  #1 Get the page for name reversal.
  get '/reversename/:name' do
    # Set a param for a name to an instance variable.
    @name = params[:name]
    # This variable is inherntly a string (acts like an array)
    # so #reverse should work.
    return "#{@name.reverse}"
  end

  #2 Get the page for square number.
  get '/square/:number' do
    # Set the number to an int and instance variable.
    @number = params[:number].to_i
    # Square the number.
    @res = @number * @number
    # Return the @res back to a string.
    return "#{@res.to_s}"
  end

  #3 Get the page for repitous phrase.
  get '/say/:number/:phrase' do
    # Set number and phrase to params.
    @number = params[:number].to_i
    @phrase = params[:phrase]
    return "#{@phrase * @number} "
  end

  #4 Get page for stating words 1 - 5.
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    return "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  #5 Get page for simple math.
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == 'add'
      return (@number1 + @number2).to_s
    elsif @operation == 'subtract'
      return (@number1 - @number2).to_s
    elsif @operation == 'multiply'
      return (@number1 * @number2).to_s
    elsif @operation == 'divide'
      return (@number1 / @number2).to_s
    else
      return "I don't understand."
    end
  end
end 