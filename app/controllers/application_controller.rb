class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/brands' do 
    brands = Brand.all
    brands.to_json
  end

  get '/brands/:id' do
    brand = Brand.find(params[:id])
    brand.to_json
  end

  post '/brands' do
    brand = Brand.create(
      name: params[:name],
      country: params[:country],
      description: params[:description])
    brand.to_json
  end

  put '/brands/:id' do
    brand = Brand.find(params[:id])
    brand.update(params)
    brand.to_json
  end

  delete '/brands/:id' do
    brand = Brand.find(params[:id])
    brand.destroy
    brand.to_json
  end

  get '/models' do
    models = Model.all
    models.to_json
  end

  get '/models/:id' do
    model = Model.find(params[:id])
    model.to_json
  end

  post '/models' do
    model = Model.create(
      name: params[:name],
      year: params[:description] 
             
    )
    model.to_json
  end

  put '/models/:id' do
    model = Model.find(params[:id])
    model.update(params)
    model.to_json
  end

  delete '/models/:id' do
    model = Model.find(params[:id])
    model.destroy
    model.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  post '/users' do
    user = User.create(params)
    user.to_json
  end

  put '/users/:id' do
    user = User.find(params[:id])
    user.update(params)
    user.to_json
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end