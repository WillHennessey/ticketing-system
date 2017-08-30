class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all.order(:priority)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
