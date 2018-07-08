require 'rails_helper'

describe Astronaut do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is invalid without a name, age and job' do
        astronaut = Astronaut.new()

        expect(astronaut).to be_invalid
      end
    end
  end
end
