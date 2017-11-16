require 'sinatra'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/legalese' do
  erb :legalese
end

get '/recipes' do
  @recipes = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten-free Cookies',
    4 => 'Nitrogen Chocolate Ice Cream'
  }

  erb :recipes
end

get '/recipes/:id' do
  recipes = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten-free Cookies',
    4 => 'Nitrogen Chocolate Ice Cream'
  }

  recipe_id = params[:id].to_i

  @recipe_name = recipes[recipe_id]

  erb :recipe
end
