class EventsController < ApplicationController
  before_action :logged_in?, except: [:index]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.created_events.build(event_params)
    @event.attendees << current_user
    @event.date = DateTime.strptime(event_params[:date], "%m/%d/%Y")
    if @event.save
      flash[:success] = "Event successfully created!"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def attend
    @event = Event.find(params[:id])
    @event.attendees << current_user
    flash[:notice] = "`You are now attending: #{@event.title}`"
    redirect_to current_user
  end

  private

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :description, :date, :location, :creator_id)
  end
end
