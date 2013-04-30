class MoviesController < ApplicationController

  def index
    @movies = Movie.all

    # respond_to do |format|
    #   format.html # render 'index'
    #   format.json { render :json => @movies }
    # end

    # respond_to do |format|
      # format.html do
      #   render 'index'
      # end
      # format.json do
      #   render :json => @movies
      # end
    # end

  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:movie][:title]
    @movie.year = params[:movie][:year]
    if @movie.save
      redirect_to movies_url
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by_id(params[:id])
  end

  def update
    @movie = Movie.find_by_id(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to movies_url
  end

  def destroy
    m = Movie.find_by_id(params[:id])
    m.destroy
    redirect_to movies_url
  end





end
