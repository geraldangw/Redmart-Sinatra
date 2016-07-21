class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb :'home'
  end

  get '/users' do
    @users = Users.all

    erb :'users'
  end

  get '/users/:id' do

    @users = Users.find(params[:id])
    erb :'each_user'

  end

  get '/products' do
    @products = Products.all

    erb :'products'
  end

  get '/products/:id' do

    @products = Products.find(params[:id])
    erb :'each_product'

  end

  get '/purchases' do
    @purchases = Purchases.all

    erb :'purchases'
  end

  get '/purchases/:id' do

    @purchases = Purchases.find(params[:id])
    erb :'each_purchase'

  end

end
