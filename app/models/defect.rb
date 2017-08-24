class Defect < Ticket

  def set_default_priority
    update(priority: 1)
  end

  def due_at
    created_at + 1.day + 1.hour
  end
end