class EventsController < ApplicationController
  before_action :initialize_event, only: [:new, :create]
  before_action :set_event, only: [:edit, :update, :destroy, :show]

  def index
    @events = Event.all
      .includes(:customer, :event_type)
      .order(start: :asc)
  end

  def new
  end

  def create
    if @event.update event_params
      redirect_to events_path
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @event.update event_params
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  def show
  end

  private

  def initialize_event
    @event = Event.new(
      start: DateTime.now.beginning_of_hour + 1.hour,
      finish: DateTime.now.beginning_of_hour + 3.hours,
    )
  end

  def set_event
    @event = Event.find params[:id]
  end

  def event_params
    params.require(:event).permit(
      :event_type_id,
      :customer_id,
      :start,
      :finish
    )
  end
end
