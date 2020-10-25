require_relative '../models/game.rb'
require_relative '../models/action/good_action.rb'
require_relative '../data/scenario.rb'
require 'readline'

RSpec.describe Game do
  let(:scenario) { loadScenario }
  let(:game) { Game.new(scenario) }

  describe '#initialize' do
    it 'current_scene take the first scene by default' do
      expect(game.current_scene).to equal(scenario.first)
    end
  end

  describe '#execute_action' do
    it 'set current_scene to the next scene' do
      any_action = Good_action.new('jump', 3)
      game.execute_action any_action
      expect(game.current_scene).to equal(scenario[3])
    end
  end
end
