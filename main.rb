require_relative 'data/scenario'
require_relative 'models/game'

scenario = loadScenario
game = Game.new scenario
game.run
