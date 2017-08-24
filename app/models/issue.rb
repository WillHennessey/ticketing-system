class Issue < Ticket

  def set_default_priority
    update(priority: 3)
  end

  def due_at
    created_at + 1.day + 6.hours
  end
end
