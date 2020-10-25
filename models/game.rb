require 'readline'
require_relative 'action/exit_action.rb'
require_relative 'action/no_action.rb'

class Game
  attr_reader :current_scene

  def initialize(scenario)
    @scenario       = scenario
    @current_scene  = @scenario.first
  end

  def run
    self.print_description
    self.get_input
  end

  def get_input
    while input = Readline.readline('> ', true)
      action = @current_scene.get_action_by_name input

      self.execute_action action
      break if action.stop_input?

      self.print_description
    end 
  end

  def execute_action(action)
    print action.get_message
    @current_scene = action.index_next_scene.nil? ? nil : @scenario[action.index_next_scene]
  end

  def print_description
    puts @current_scene.get_description_with_actions
  end
end
