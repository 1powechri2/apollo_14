require 'rails_helper'

describe 'User visits Astronaut Index' do
  scenario 'it sees a list of astronaut missions in alphabetical order' do
    astronaut = Astronaut.create(name: 'gob', age: 84, job: 'pilot')
    mission_1 = astronaut.space_missions.create(title: 'Apollo 13', trip_length: 1)
    mission_2 = astronaut.space_missions.create(title: 'Capricorn 4' , trip_length: 4)
    mission_3 = astronaut.space_missions.create(title: 'Gemini 7', trip_length: 8)

    visit astronauts_path
    binding.pry

    expect(page).to have_content(mission_1.title)
    expect(page).to have_content(mission_2.title)
    expect(page).to have_content(mission_3.title)
  end
end
