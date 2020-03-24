class UserController < ApplicationController

  get '/gages' do
    "You are logged in as #{{session[:email]}}"
  end

end 
