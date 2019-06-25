require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phr = params[:phrase]
    @out = ""
    @num.times do 
      @out << @phr
    end
    "#{@out}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@str}"
  end

  get '/:operation/:number1/:number2' do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{@n1 + @n2}"
    when "subtract"
      "#{@n1 - @n2}"
    when "multiply"
      "#{@n1 * @n2}"
    when "divide"
      "#{@n1 / @n2}"
    end
  end
end