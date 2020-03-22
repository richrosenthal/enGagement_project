class SessionsController < ApplicationController

  get '/login' do
    erb :'/sessions/login'
  end

  post '/sessions' do
    #login a user with this email and Password
    login(params[:email], params[:password])
    redirect '/home'
  end

  get '/logout' do
    logout!
    redirect '/index.erb'
  end
  
end
