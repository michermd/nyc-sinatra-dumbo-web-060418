class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  post '/landmarks' do
    # binding.pry
    @landmark = Landmark.create(params[:landmark])
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])

    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    @landmark.name = params[:name]
    @landmark.figure_id = params[:figure_id]
    @landmark.year_completed = params[:year_completed]
    @landmark.save

    redirect to "landmarks/#{@landmark.id}"
  end

  



end
