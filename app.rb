require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
   @name = params[:name].reverse
   "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    string = ''
    params[:number].to_i.times do 
      string += "#{params[:phrase]} "
    end
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      (@num1+@num2).to_s
    when "subtract"
      (@num1-@num2).to_s
    when "multiply"
      (@num1*@num2).to_s
    when "divide"
      (@num1/@num2).to_s
    else
      "wrong operation: only add, subtract, multiply or divide"
    end
    
  end

end