class Scene
  attr_reader :description, :actions

  def initialize(index, description, actions = [])
    @index        = index
    @description  = description
    @actions      = [Exit_action.new] + actions
  end

  def get_action_by_name(name_action)
    action = @actions.find { |a| a.name == name_action }

    if action.nil?
      No_action.new @index
    else
      action
    end
  end

  def get_name_actions
    @actions.drop(1).map(&:name)
  end

  def get_description_with_actions
    return @description if @actions.length < 2

    text = @description.dup
    text.concat(' (')
    text.concat(self.get_name_actions.join('/'))
    text.concat(')')
  end
end
