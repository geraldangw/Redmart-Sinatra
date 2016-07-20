class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb '<h2> YAYYYYYY </h2>'
  end

  get '/users' do
    @users = Users.all

    erb :'users'
  end

end
