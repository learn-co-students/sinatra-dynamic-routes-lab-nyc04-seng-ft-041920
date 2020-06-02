require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    square = @number ** 2
    "#{square.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @phrase = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    total = calc(@op, @num1, @num2)
  end

  def calc(op, num1, num2)
    calc = nil
    if op == "add"
      calc = num1 + num2
    elsif op == "divide"
      calc = num1 / num2
    elsif op == "subtract"
      calc = num1 - num2
    elsif op == "multiply"
      calc = num1 * num2
    end
    # binding.pry

    calc.to_s
  end
end
