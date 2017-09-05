class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit]

  def index
    @tickets = Ticket.all.order(:priority)
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def update
  end

  private

  def ticket_params
    params.require(:ticket).permit(:type, :priority, :details, :abstract)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end
