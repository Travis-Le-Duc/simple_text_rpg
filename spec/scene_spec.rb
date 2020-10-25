require_relative '../models/scene.rb'
require_relative '../models/action/good_action.rb'
require_relative '../models/action/exit_action.rb'
require_relative '../models/action/no_action.rb'

RSpec.describe Scene do
  let(:scene) { Scene.new(1, 'my description', [action1, action2, action3]) }
  let(:scene2) { Scene.new(2, 'my description 2') }
  let(:action1) { Good_action.new('left',  scene2) }
  let(:action2) { Good_action.new('right', scene2) }
  let(:action3) { Good_action.new('forward', scene2) }

  describe '#initialize' do
    it 'scene with a description and one Exit_action by default' do
      default_scene = Scene.new(1, "a default scene")
      expect(default_scene.description).to eq("a default scene")
      expect(default_scene.actions.length).to eq(1)
      expect(default_scene.actions.first).to be_an_instance_of(Exit_action)
    end
  end
  describe '#get_action_by_name' do
    it 'return the action if action is include in actions' do
      expect(scene.get_action_by_name('forward')).to equal(action3)
    end
    it 'return an instance of No_action if action is not include in actions' do
      expect(scene.get_action_by_name('jump')).to be_an_instance_of(No_action)
    end
  end

  describe '#get_name_actions' do
    it "return a string array of actions name" do
      expect(scene.get_name_actions).to eq(['left', 'right', 'forward'])
    end
  end

  describe '#get_description_with_actions' do
    it "return the description with actions" do
      expect(scene.get_description_with_actions).to eq("my description (left/right/forward)")
    end

    it "return empty" do
      default_scene = Scene.new(1, "a default scene")
      expect(default_scene.get_description_with_actions).to eq("a default scene")
    end
  end
end
