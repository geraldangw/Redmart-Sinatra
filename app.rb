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

 #  get '/users' do
 #   @users = User.all
 #   erb :'users/index'
 # end
 #
 # get "/users/new" do
 #   erb :'users/new'
 # end
 #
 # get '/users/:id' do
 #   @user = User.find(params[:id])
 #   erb :'users/show'
 # end
 #
 # get "/users/:id/edit" do
 #   erb :'users/edit'
 # end

 # index => all[users]
 # show => specific [user]
 # edit => form to update [user]
 # new => form to create [user]

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
