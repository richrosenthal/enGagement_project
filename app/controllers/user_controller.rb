class UserController < ApplicationController

  get "/users/home" do
    erb  :"/users/home"
  end

  get "/users/show" do
    erb :"/users/show"
  end




end
