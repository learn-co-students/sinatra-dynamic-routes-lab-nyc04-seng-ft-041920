require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    url_name = params[:name]
    reverse_name = url_name.reverse
    "#{reverse_name}"
  end

  get '/square/:number' do
    url_num = params[:number].to_i
    sqr_num = url_num ** 2
    "#{sqr_num}"
  end

  get '/say/:number/:phrase' do
    url_num = params[:number].to_i
    url_phrase = params[:phrase]
    "#{url_phrase* url_num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    url_oper = params[:operation]
    url_num1 = params[:number1].to_i
    url_num2 = params[:number2].to_i
    case url_oper
    when 'add'
      answer = url_num1 + url_num2
    when "subtract"
      answer = url_num1 - url_num2
    when "multiply"
      answer = url_num1 * url_num2
    when "divide"
      answer = url_num1 / url_num2
    else
      answer = "Not an operator."
    end
    # binding.pry
    "#{answer}"
  end

end
