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
    if @event.save
      flash[:success] = "Event successfully created!"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :description, :date, :location, :creator_id)
  end
end