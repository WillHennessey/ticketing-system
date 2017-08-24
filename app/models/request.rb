class Request < Ticket

  def set_default_priority
    update(priority: 4)
  end

  def due_at
    created_at + 1.day + 12.hours
  end
end