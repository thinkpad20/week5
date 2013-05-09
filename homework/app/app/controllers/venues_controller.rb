class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find_by_id(params[:id])
    @events = Event.where(:venue_id => params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    v = Venue.new
    v.name = params[:venue][:name]
    v.address = params[:venue][:address]
    v.save

    redirect_to venues_url
  end

  def edit
    @venue = Venue.find_by_id(params[:id])
  end

  def update
    @venue = Venue.find_by_id(params[:id])
    @venue.name = params[:venue][:name]
    @venue.address = params[:venue][:address]
    @venue.save
    redirect_to venues_url
  end

  def destroy
    v = Venue.find_by_id(params[:id])
    v.destroy
    redirect_to venues_url
  end

end
