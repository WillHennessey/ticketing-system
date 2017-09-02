class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit]

  def index
    @tickets = Ticket.all.order(:priority)
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end
