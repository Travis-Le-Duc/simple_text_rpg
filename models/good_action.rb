require_relative 'action'

class Good_action < Action
  def initialize(name, index_next_scene)
    @name = name
    @index_next_scene = index_next_scene
  end

  def get_message
    ''
  end
end
