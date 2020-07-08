require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    name = params[:name]
    name.reverse.to_s
  end

  get '/square/:num' do 
    num = params[:num].to_i
    (num*num).to_s
  end

  get '/say/:num/:phrase' do 
    num = params[:num].to_i
    phrase = params[:phrase]
    result = ""
    for i in 0..num-1 
      result += phrase
    end
    result
  end

  get '/say/:w1/:w2/:w3/:w4/:w5' do 
    w1 = params[:w1]
    w2 = params[:w2]
    w3 = params[:w3]
    w4 = params[:w4]
    w5 = params[:w5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get '/:op/:num1/:num2' do 
    op = params[:op]
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    case op 
    when 'add'
      (num1 + num2).to_s
    when 'subtract'
      (num1 - num2).to_s
    when 'multiply'
      (num1 * num2).to_s
    when 'divide'
      (num1 / num2).to_s
    end
  end

end