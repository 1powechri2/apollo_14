require 'rails_helper'

describe 'User visits Astronaut Index' do
  scenario 'user sees a average age of astronauts' do
    astro_one = Astronaut.create(name: 'pood', age: 5, job: 'foog')
    astro_two = Astronaut.create(name: 'bih', age: 7, job: 'fokl')

    avg = (astro_one.age + astro_two.age)/2

    visit astronauts_path

    expect(page).to have_content(avg)
  end
end
