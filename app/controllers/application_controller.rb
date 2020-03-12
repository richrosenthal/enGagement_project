require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "secret"
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
   @user.save
   session[:user_id] = @user.id
   puts params

   redirect '/users/home'
 end

  get "/index" do
    erb :index
  end

end
