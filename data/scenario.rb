require_relative '../models/scene'
require_relative '../models/action/good_action'
require_relative '../models/action/win_action'
require_relative '../models/action/bad_action'
require_relative '../models/action/exit_action'

def loadScenario

  scene0 = Scene.new(
    0,
    "You are Homer Simpson, you want to drink a beer in bar... \n Are you ready?",
    [
      Good_action.new("yes", 1),
      Exit_action.new("no")
    ]
  )

  scene1 = Scene.new(
    1,
    "You are in the living room, where do you go?",
    [
      Good_action.new("entrance", 2),
      Good_action.new("kitchen", 3)
    ]
  )

  scene2 = Scene.new(
    2,
    "You are opening the entrance door to leave but you meet Marge, she is angry and order you to stay at home to keep an eye on children... \n It's over for the beer today. \n Want to try again?",
    [
      Good_action.new('yes', 0),
      Bad_action.new('no')
    ]
  )

  scene3 = Scene.new(
    3,
    "You are now in the kitchen, you want go out through the window but you see the oven that catches fire. You have two choices; \n a: The most important is my beer, go out through the window \n b: Stop the fire \n What do you do?",
    [
      Good_action.new('a', 5),
      Good_action.new('b', 4)
    ]
  )

  scene4 = Scene.new(
    4,
    "You are trying to put out fire, but you burn yourself. \n You are now in the hospital for several days... \n Want to try again?",
    [
      Good_action.new('yes', 0),
      Bad_action.new('no')
    ]
  )

  scene5 = Scene.new(
    5,
    "You're finally out, you walk to the bar. Then you go into the bar, you are so happy! You ask the barman Moe for a beer. But your children and Marge are showing up! Your are learning the house is burned and Marge is very angry. \n You have two choices: Apologize to Marge and go to home or ignore the family and drink your beer.",
    [
      Good_action.new('apologize', 6),
      Win_action.new('drink')
    ]
  )

  scene6 = Scene.new(
    6,
    "You're going to home and it's over for the beer...  \n Want to try again?",
    [
      Good_action.new('yes', 0),
      Bad_action.new('no')
    ]
  )

  scenario = [
    scene0,
    scene1,
    scene2,
    scene3,
    scene4,
    scene5,
    scene6
  ]

  scenario
end
