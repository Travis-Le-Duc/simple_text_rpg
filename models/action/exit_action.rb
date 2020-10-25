require_relative 'action'

class Exit_action < Action
  def initialize(name = 'exit')
    @name = name
    @index_next_scene = nil
  end

  def get_message
    "See you soon... \n"
  end
end
