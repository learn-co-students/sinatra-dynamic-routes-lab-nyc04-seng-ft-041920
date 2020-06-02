require_relative 'config/environment'
# require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
     @name = params[:name]

     "#{@name.reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do

    say_length = [*1..params[:number].to_i]
    say_length.map{|number| number = params[:phrase]} 

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    to_join = []
    all_words = params.each{|k,v| to_join << v}
    joined = to_join.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    operations = {
      "add" => params[:number1].to_i + params[:number2].to_i,
      "subtract" => params[:number1].to_i - params[:number2].to_i,
      "multiply" => params[:number1].to_i * params[:number2].to_i,
      "divide" => params[:number1].to_i / params[:number2].to_i
    }

    "#{operations[params[:operation]]}"
  end

end