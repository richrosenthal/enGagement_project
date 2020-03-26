class GagesController < ApplicationController
  get '/gages' do
    "You are logged in as #{session[:email]}"

  end

  get '/gages/new' do
    if !session[:email]
      redirect '/sessions/login'
    else
      "A new gage form"
    end
  end

  get '/gages/:id/edit' do
    if !session[:email]
      redirect '/sessions/login'
    else
      "A new gage form"
    end
  end
end