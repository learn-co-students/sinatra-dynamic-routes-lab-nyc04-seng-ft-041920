require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
  @name = params[:name]
  "#{@name}".reverse
  end

  get "/square/:number" do
    @number = params[:number]
    @Total = params[:number].to_i ** 2
    "#{@Total}"
  end 

  get "/say/:number/:phrase" do
    the_phrase = ''

    params[:number].to_i.times do
      the_phrase += params[:phrase]
    end
    the_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    
    operation = params[:operation]
    numb1 = params[:number1].to_i
    numb2 = params[:number2].to_i

    case operation
     when 'add'
      "#{numb1 + numb2}"
     when 'subtract'
      "#{numb1 - numb2}"
     when 'multiply'
      "#{numb1 * numb2}"
     when 'divide'
      "#{numb1 / numb2}"

     end
  end
end