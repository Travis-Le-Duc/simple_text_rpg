require_relative '../../models/action/no_action.rb'
require_relative '../../models/action/action.rb'

RSpec.describe No_action do
  let(:action) { No_action.new(2) }

  it 'inherit from Action' do
    expect(No_action.superclass).to be Action
  end

  describe '#initialize' do
    it 'action with an empty name by default' do
      expect(action.name).to eq('')
      expect(action.index_next_scene).to eq(2)
    end
  end

  describe '#stop_input' do
    it 'returns false' do
      expect(action.stop_input?).to be false
    end
  end
end
