class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
    @venue = Venue.find_by_id(@event.venue_id)
  end

  def new
    @event = Event.new
  end

  def create
    e = Event.new
    e.name = params[:event][:name]

    year = params[:event]["date(1i)"]
    month = params[:event]["date(2i)"]
    day = params[:event]["date(3i)"]
    hour = params[:event]["date(4i)"]
    minute = params[:event]["date(5i)"]

    e.date = "#{year}-#{month}-#{day} #{hour}:#{minute}:00"

    e.venue_id = params[:event][:venue_id]
    e.description = params[:event][:description]
    e.save

    redirect_to events_url
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.name = params[:event][:name]
    year = params[:event]["date(1i)"]
    month = params[:event]["date(2i)"]
    day = params[:event]["date(3i)"]
    hour = params[:event]["date(4i)"]
    minute = params[:event]["date(5i)"]

    @event.date = "#{year}-#{month}-#{day} #{hour}:#{minute}:00"
    @event.description = params[:event][:description]
    
    @event.save
    redirect_to events_url
  end

  def destroy
    e = Event.find_by_id(params[:id])
    e.destroy
    redirect_to events_url
  end

end