class UsersController < ApplicationController

  get "/users/home" do
    erb  :"/users/home"
  end

  get '/registrations/signup' do
    erb :'/registrations/signup'
  end

  post '/registrations' do
    #added validation
    @user = User.new(name: params["name"], email: params["email"], password: params["password"])
    if @user.save #creates a user object with params and saves it to class array



      session[:user_id] = @user.id #set session id to newly created user.id
    #  puts params #should output the params to console

      redirect "/users/#{ @user.id }"

    else
      redirect :'/registrations/signup'
    end
 end



end
