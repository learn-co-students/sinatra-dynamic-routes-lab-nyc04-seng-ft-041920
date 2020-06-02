require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    "#{reversed_name}"
  end

  get '/square/:number' do
    squared = params[:number].to_i ** 2
    "#{squared}"
  end

  get '/say/:number/:phrase' do 
    phrase = params[:phrase].split("%20").join(" ")
    number = params[:number].to_i
  
    "#{phrase}" * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
  
    if operation == "divide" 
      result = num1 / num2
    elsif operation == "subtract" 
      result = num1 - num2
    elsif operation == "add"
      result = num1 + num2
    elsif operation == "multiply" 
      result = num1 * num2
    end

    "#{result}"
  end
end
