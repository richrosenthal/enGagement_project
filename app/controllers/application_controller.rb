require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "itsasecrectoallofus"
  end

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/registrations/signup' do
    erb :'/registrations/signup'
  end

  post '/registrations' do
   @user = User.new(name: params["name"], email: params["email"], password: params["password"])
   @user.save #creates a user object with params and saves it to class array
   session[:user_id] = @user.id
   puts params #should output the params to console

   redirect '/users/home'
 end

  get "/index" do
    erb :index
  end


  helpers do
    def logged_in?
      !!session[:email]
    end

    def login(email)
      if user = User.find_by(:email => email)
        session[:email] = user.email
      else
        redirect '/login'
      end 
    end

    def logout!
      session.clear
    end
end
