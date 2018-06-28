class FiguresController < ApplicationController

  get '/figures/new' do
    @figures = Figure.all
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"/figures/new"
  end

  get '/figures' do
    @figures = Figure.all
      # binding.pry
        erb :"/figures/index"

  end

  post '/figures' do
    binding.pry
    @figure = Figure.create(params[:figure])
    erb :"/figures/index"
  end



end
