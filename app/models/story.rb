class Story < Ticket

  def set_default_priority
    update(priority: 2)
  end

  def due_at
    created_at + 1.day + 3.hours
  end
end