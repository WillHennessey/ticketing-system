class DefectTicket < Ticket
  PRIORITY = 1

  def set_default_priority
    update(priority: PRIORITY)
  end
end
