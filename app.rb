require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}" * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    i = 1
    while i <= 5
      words << params.first[1]
      params.shift
      i += 1
    end
    "#{words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    method = params[:operation]
    case method
    when "add"
      sum = num1 + num2
      "#{sum}"
    when "subtract"
      difference = num1 - num2
      "#{difference}"
    when "multiply"
      product = num1 * num2
      "#{product}"
    when "divide"
      # binding.pry
      quotient = num1 / num2
      "#{quotient}"
    end
  end

end