class GagesController < ApplicationController
  get '/gages_1' do
    "You are logged in as #{session[:email]}"
  end
end
