require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    name = params[:name]
    "#{name.reverse}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    "This is your number squared: #{num**2}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    output_array = []
    num.times do
      output_array << phrase
    end
    "#{output_array}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    array = [word1, word2, word3, word4, word5]
    "#{array.join(' ')}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    end
    "#{result.to_s}"
  end

end