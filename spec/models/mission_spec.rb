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
end
