require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do 
     n = params[:name]
     "#{n.reverse}"
  end

  get "/square/:number" do 
    num = params[:number].to_i
    "#{num ** 2}"
  end

  get "/say/:number/:phrase" do 
    num = params[:number].to_i
    phrase = params[:phrase].to_s
    phrase_arr = []
    num.times do 
      phrase_arr << phrase
    end
    "#{phrase_arr}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    # binding.pry 
    word5 = params[:word5]
    array = [word1, word2, word3, word4, word5]
    "#{array.join(" ")}."
  end

  get "/:operation/:number1/:number2" do 
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
     product = 0

    if operation == "add"
      # num1.to_s + num2.to_s
      product = num1 + num2
      product.to_s
    elsif 
      operation == "subtract"
      product = num1 - num2
      product.to_s
    elsif
      operation == "multiply"
      product = num1 * num2
      product.to_s
      else
        operation == "divide"
        product = num1 / num2
        product.to_s
    end  
  end

end