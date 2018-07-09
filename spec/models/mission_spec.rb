require 'rails_helper'

describe SpaceMission do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is invalid without a title and trip_length' do
        mission = SpaceMission.new()

        expect(mission).to be_invalid
      end
    end
  end
  describe 'Relationships' do
    context 'relationships' do
      it {should have_many(:astronauts).through(:astronaut_space_missions)}
    end
  end
end
