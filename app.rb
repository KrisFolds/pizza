require "sinatra"

get '/' do
    erb :welcome
end

post '/pizza_crust' do
    crust = params[:crust]
    redirect '/toppings?crust=' + crust
end

get '/toppings' do
    crust = params[:crust]
    erb :toppings, :locals => {:crust => crust}
end

post '/toppings' do
    crust = params[:crust]
    toppings = params[:toppings]
    redirect '/salad?crust=' + crust + '&toppings=' + toppings
end

get '/salad' do 
    crust = params[:crust]
    toppings = params[:toppings]
    erb :salad, :locals => {:crust => crust, :toppings => toppings}
end

post '/salad' do
    crust = params[:crust]
    toppings = params[:toppings]
    salad = params[:salad]
    redirect '/drink?crust=' + crust + '&toppings=' + toppings + '&salad=' + salad
end

get '/drink' do
    crust = params[:crust]
    toppings = params[:toppings]
    salad = params[:salad] 
    erb :drink, :locals => {:crust => crust, :toppings => toppings, :salad => salad}
end

post '/drink' do 
    crust = params[:crust]
    toppings = params[:toppings]
    salad = params[:salad]
    drink = params[:drink]
    redirect '/final?crust=' + crust + '&toppings=' + toppings + '&salad=' + salad + '&drink=' + drink
end

get '/final' do 
    crust = params[:crust]
    toppings = params[:toppings]
    salad = params[:salad] 
    drink = params[:drink]
    erb :final, :locals => {:crust => crust, :toppings => toppings, :salad => salad, :drink => drink}
end

