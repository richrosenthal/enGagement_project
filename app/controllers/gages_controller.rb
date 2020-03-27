class GagesController < ApplicationController

  #get gage_entries/new to render a form to create new entry
  get '/gages/new' do
    erb :'gages/new'
  end
  # post gage_entries to create a new gage entry

  # show route for a gage entry

  #index route for all gage entries

end
