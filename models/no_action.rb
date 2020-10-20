require_relative 'action'

class No_action < Action
  def initialize(index_next_scene)
    @name = ''
    @index_next_scene = index_next_scene
  end

  def get_message
    "D'Oh! Invalid input... \n"
  end

  def stop_input?
    false 
  end
end
