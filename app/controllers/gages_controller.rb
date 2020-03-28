class GagesController < ApplicationController

  #get gage_entries/new to render a form to create new entry
  get '/gages/new' do
    erb :'gages/new'
  end



  # post gage_entries to create a new gage entry
  post '/gages' do
    #ensures that the user is logged in
    if !logged_in?
      redirect '/login'
    end
    #make sure the user enters the required information
    #name, due_date, and date_created is required. The rest is optional.

    if params[:name] !="" && params[:due_date] !="" && params[:date_created] !=""

      @gage = Gage.create(name: params[:name], date_created: params[:date_created],
      due_date: params[:due_date], previous_due_date: params[:previous_due_date], user_id: current_user.id )
      @gage.save #creates a gage object with params and saves it to class array

      redirect "/gages/#{ @gage.id }"
    else
      redirect '/gages/new'
    end
  end


  # show route for a gage entry
  get '/gages/:id' do
    @gage = Gage.find(params[:id])
    @user = User.find_by(session[:user_id]) #Finds current user by using session id
    erb :'gages/show'
  end
  # edit route for created gage
  get '/gages/:id/edit' do
    erb :'/gages/edit'
  end
  #index route for all gage entries

end
