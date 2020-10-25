require_relative '../../models/action/win_action.rb'
require_relative '../../models/action/action.rb'

RSpec.describe Win_action do

  it 'inherit from Action' do
    expect(Win_action.superclass).to be Action
  end
end
