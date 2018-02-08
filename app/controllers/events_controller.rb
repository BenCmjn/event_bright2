class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator = current_user
    if @event.save
      p "erreurs :"
      @event.errors.each {|e| p e}
      p "fin des erreurs"
      flash[:success] = "évènement créé !"
      redirect_to event_path
    else
    	render 'new'
    end
  end

  def event_params
    params.require(:event).permit(:description, :date, :place)
  end

  def index
    @events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end


  

end
