class Action
  attr_reader :name, :index_next_scene

  def initialize(name)
    @name = name
    @index_next_scene = nil
  end

  def stop_input?
    true
  end
end
