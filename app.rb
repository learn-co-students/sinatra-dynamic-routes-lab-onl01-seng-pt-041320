require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    single_string = []
    number.times do
      single_string << phrase
    end
    single_string.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      "(#{params[:number1].to_i+params[:number2].to_i}).to_s"
    elsif params[:operation] == "subtract"
      "(#{params[:number1].to_i-params[:number2].to_i}).to_s"
    elsif params[:operation] == "multiply"
      "(#{params[:number1].to_i*params[:number2].to_i}).to_s"
    elsif params[:operation] == "divide"
      "(#{params[:number1].to_i/params[:number2].to_i}).to_s"
    end
  end
end