class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb :'home'
  end

  get '/users' do
    @users = Users.all

    erb :'users/index'
  end

  get "/users/new" do
    erb :'users/new'
  end

  get '/users/:id' do

    @users = Users.find(params[:id])
    erb :'users/show'

  end

 get "/users/:id/edit" do
   erb :'users/edit'
 end

 post "/users" do
   puts params[:user]

   @new_user = Users.new(params[:user])

   if @new_user.save
     #go to all user list
     redirect("/users")
   else
     #throw an error
     erb :"users/new"
   end

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
