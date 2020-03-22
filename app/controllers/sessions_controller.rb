class SessionsController < ApplicationController

  get '/login' do
    erb :'/sessions/login'
  end

  post '/sessions' do
    #login a user with this email and Password
    login(params[:email], params[:password])
    redirect '/users/home'
  end

  get '/logout' do
    logout!
    redirect '/welcome.erb'
  end

end
