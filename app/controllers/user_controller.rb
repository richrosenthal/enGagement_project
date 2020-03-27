class UserController < ApplicationController

  get "/users/home" do
    erb  :"/users/home"
  end

  get '/users/:id' do
    erb :'/users/show'
  end




end
