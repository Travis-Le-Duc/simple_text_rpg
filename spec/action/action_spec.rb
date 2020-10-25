require_relative '../../models/action/action.rb'

RSpec.describe Action do
  let(:action) { Action.new('jump') }

  describe '#initialize' do
    it 'action with a name and index_next_scene to nil by default' do
      expect(action.name).to eq('jump')
      expect(action.index_next_scene).to be_nil
    end
  end

  describe '#stop_input' do
    it 'returns true' do
      expect(action.stop_input?).to be true
    end
  end
end
