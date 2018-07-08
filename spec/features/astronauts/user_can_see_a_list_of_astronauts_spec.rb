require 'rails_helper'

describe 'User visits Astronaut Index' do
  scenario 'user sees a list astronauts with attributes' do
    astro_one = Astronaut.create(name: 'pood', age: '5', job: 'foog')
    astro_two = Astronaut.create(name: 'pood', age: '5', job: 'foog')

    visit astronauts_path

    expect(page).to have_content(astro_one.name)
    expect(page).to have_content(astro_one.age)
    expect(page).to have_content(astro_one.job)
    expect(page).to have_content(astro_one.name)
    expect(page).to have_content(astro_one.age)
    expect(page).to have_content(astro_one.job)
  end
end
