require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "itsasecrectoallofus"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    #checks to see if user is logged in and directs to either home page or straight to user page
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end
  end




#user Show route
 get '/users/:id' do
   @user = User.find_by(id: params[:id])
   erb :'/users/show'
 end

  get "/index" do

    erb :index
  end




  helpers do
    def logged_in?
      !!current_user
    end

    def login(email, password)
      if user = User.find_by(:email => email)
        session[:user_id] = user.id

      else
        redirect 'sessions/login'
      end
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end



    def logout!
      session.clear
    end
  end
end
