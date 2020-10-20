require_relative '../models/game.rb'
require_relative '../models/good_action.rb'
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

  describe '#get_input' do
    it 'set current_scene to the next scene' do
      any_action = Good_action.new('jump', 3)
      allow(Readline).to receive(:readline).and_return('')
      allow(game.current_scene).to receive(:get_action_by_name).and_return(any_action)

      game.get_input
      expect(game.current_scene).to equal(scenario[3])
    end
  end
end
