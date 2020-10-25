require_relative '../../models/action/good_action.rb'
require_relative '../../models/action/action.rb'

RSpec.describe Good_action do
  let(:action) { Good_action.new('jump', 2) }

  it 'inherit from Action' do
    expect(Good_action.superclass).to be Action
  end

  describe '#initialize' do
    it 'action with a name and an index_next_scene' do
      expect(action.name).to eq('jump')
      expect(action.index_next_scene).to eq(2)
    end
  end

  describe '#stop_input' do
    it 'returns false' do
      expect(action.stop_input?).to be false
    end
  end
end
