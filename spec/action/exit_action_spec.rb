require_relative '../../models/action/exit_action.rb'
require_relative '../../models/action/action.rb'

RSpec.describe Exit_action do
  let(:action) { Exit_action.new }

  it 'inherit from Action' do
    expect(Exit_action.superclass).to be Action
  end

  describe '#initialize' do
    it "action with name 'exit' and an index_next_scene to nil by default" do
      expect(action.name).to eq('exit')
      expect(action.index_next_scene).to be_nil
    end
  end
end
