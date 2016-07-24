class RedmartSinatraApp < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/users' do
    @users = Users.all

    erb :'users/index'
  end

  get '/users/:id' do
    if params[:id] == 'new'
      erb :'users/new'
    elsif params[:id] == 'edit'
      erb :'users/edit'
    else
    @users = Users.find(params[:id])
    erb :'users/show'
  end
end

  get '/users/:id/edit' do
    @users = Users.find(params[:id])
    erb :'users/edit'
  end

  post '/users' do
    puts params[:user]

    @new_user = Users.new(params[:user])

    if @new_user.save
      # go to all user list
      redirect('/users')
    else
      # throw an error
      erb :"users/new"
    end
  end

  delete '/users/:id' do
    @deleted_user = Users.find(params[:id])

    if @deleted_user.destroy
      # go to all user list
      redirect('/users')
    else
      # throw an error
      erb :"users/#{ @deleted_user.id }"
    end

  end

  put '/users/:id' do
    @updated_user = Users.find(params[:id])

    if @updated_user.update_attributes(params[:user])
    redirect("/users")
  end

  end

  # PRODUCTS START HERE

  get '/products' do
    @products = Products.all

    erb :'products/index'
  end

  get '/products/:id' do
    if params[:id] == 'new'
      erb :'products/new'
    elsif params[:id] == 'edit'
      erb :'products/edit'
    else
    @products = Products.find(params[:id])
    erb :'products/show'
  end
end

  get '/products/:id/edit' do
    @products = Products.find(params[:id])
    erb :'products/edit'
  end

  post '/products' do
    puts params[:product]

    @new_product = Products.new(params[:product])

    if @new_product.save
      # go to all user list
      redirect('/products')
    else
      # throw an error
      erb :"products/new"
    end
  end

  delete '/products/:id' do
    @deleted_product = Products.find(params[:id])

    if @deleted_product.destroy
      # go to all user list
      redirect('/products')
    else
      # throw an error
      erb :"products/#{ @deleted_product.id }"
    end

  end

  put '/products/:id' do
    @updated_product = Products.find(params[:id])

    if @updated_product.update_attributes(params[:product])
    redirect("/products")
  end

  end

  # PURCHASES START HERE

  get '/purchases' do
    @purchases = Purchases.all

    erb :'purchases/index'
  end

  get '/purchases/:id' do
    if params[:id] == 'new'
      erb :'purchases/new'
    elsif params[:id] == 'edit'
      erb :'purchases/edit'
    else
    @purchases = Purchases.find(params[:id])
    erb :'purchases/show'
  end
end

  get '/purchases/:id/edit' do
    @purchases = Purchases.find(params[:id])
    erb :'purchases/edit'
  end

  post '/purchases' do
    puts params[:purchases]

    @new_purchase = Purchases.new(params[:purchase])

    if @new_purchase.save
      # go to all user list
      redirect('/purchases')
    else
      # throw an error
      erb :"purchases/new"
    end
  end

  delete '/purchases/:id' do
    @deleted_purchase = Purchases.find(params[:id])

    if @deleted_purchase.destroy
      # go to all user list
      redirect('/purchases')
    else
      # throw an error
      erb :"purchases/#{ @deleted_purchase.id }"
    end

  end

  put '/purchases/:id' do
    @updated_purchase = Purchases.find(params[:id])

    if @updated_purchase.update_attributes(params[:purchase])
    redirect("/purchases")
  end

  end


  # BRANDS START HERE

get '/brands' do
  @brands = Brands.all

  erb :'brands/index'
end

get '/brands/:id' do
  if params[:id] == 'new'
    erb :'brands/new'
  elsif params[:id] == 'edit'
    erb :'brands/edit'
  else
  @brands = Brands.find(params[:id])
  erb :'brands/show'
end
end

get '/brands/:id/edit' do
  @brands = Brands.find(params[:id])
  erb :'brands/edit'
end

post '/brands' do
  puts params[:brands]

  @new_brand = Brands.new(params[:brand])

  if @new_brand.save
    # go to all user list
    redirect('/brands')
  else
    # throw an error
    erb :"brands/new"
  end
end

delete '/brands/:id' do
  @deleted_brand = Brands.find(params[:id])

  if @deleted_brand.destroy
    # go to all user list
    redirect('/brands')
  else
    # throw an error
    erb :"brands/#{ @deleted_brand.id }"
  end

end

put '/brands/:id' do
  @updated_brand = Brands.find(params[:id])

  if @updated_brand.update_attributes(params[:brand])
  redirect("/brands")
end

end

# CATEGORIES START HERE

get '/categories' do
@categories = Categories.all

erb :'categories/index'
end

get '/categories/:id' do
  if params[:id] == 'new'
    erb :'categories/new'
  elsif params[:id] == 'edit'
    erb :'categories/edit'
  else
  @categories = Categories.find(params[:id])
  erb :'categories/show'
end
end

get '/categories/:id/edit' do
  @categories = Categories.find(params[:id])
  erb :'categories/edit'
end

post '/categories' do
  puts params[:categories]

  @new_category = Categories.new(params[:category])

  if @new_category.save
    # go to all user list
    redirect('/categories')
  else
    # throw an error
    erb :"categories/new"
  end
end

delete '/categories/:id' do
  @deleted_category = Categories.find(params[:id])

  if @deleted_category.destroy
    # go to all user list
    redirect('/categories')
  else
    # throw an error
    erb :"categories/#{ @deleted_category.id }"
  end

end

put '/categories/:id' do
  @updated_category = Categories.find(params[:id])

  if @updated_category.update_attributes(params[:category])
  redirect("/categories")
end

end

end
