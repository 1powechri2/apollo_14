require 'rails_helper'

describe Astronaut do
  describe 'validations' do
    context 'invalid attributes' do
      it 'is invalid without a name, age and job' do
        astronaut = Astronaut.new()

        expect(astronaut).to be_invalid
      end
    end
    context 'valid attributes' do
      it 'is valid with a name, age and job' do
        astronaut = Astronaut.new(name: 'jkjf', age: 5, job: 'potrk')

        expect(astronaut).to be_valid
      end
    end
  end
  describe 'Relationships' do
    context 'relationships' do
      it {should have_many(:space_missions).through(:astronaut_space_missions)}
    end
  end
end
