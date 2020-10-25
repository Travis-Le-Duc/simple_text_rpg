require_relative '../../models/action/bad_action.rb'
require_relative '../../models/action/action.rb'

RSpec.describe Bad_action do

  it 'inherit from Action' do
    expect(Bad_action.superclass).to be Action
  end
end
