class UserController < ApplicationController

  get '/gages' do
    "You are logged in as #{session[:email]} and password is #{session[:password]}"

  end

end
