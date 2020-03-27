class SessionsController < ApplicationController

  get '/sessions/login' do
    erb :'/sessions/login'
  end

  post '/sessions' do
    #login a user with this email and Password
    #login(params[:email], params[:password])
    @user = User.find_by(email: params[:email])

    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{ session[:user_id]}"
    else
      redirect '/sessions/login'
    end
  end

  get '/logout' do
    logout!
    erb :welcome
  end

end
