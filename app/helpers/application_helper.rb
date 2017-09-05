module ApplicationHelper
  def ticket_types_for_select
    Ticket::TYPES.map { |t| [t.capitalize, t] }
  end
end
