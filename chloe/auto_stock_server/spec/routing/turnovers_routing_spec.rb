require 'rails_helper'

RSpec.describe 'route for turnovers', type: :routing do
  it 'route /turnovers to the turnovers controller' do
    expect(get: '/turnovers')
      .to route_to('turnovers#index')
  end

  it 'route /turnovers/search to the turnovers controller' do
    expect(get: '/turnovers/search')
      .to route_to('turnovers#search')
  end
end
