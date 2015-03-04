require 'rails_helper'

feature 'Visitor searches by zipcode' do
  scenario 'raining' do
    # setup
    visit root_path

    # exercise
    fill_in "What's your zipcode?", with: 98101
    click_button "Is it going to rain?"
   
    # verify
    expect(page).to have_content('Looks like rain!')
    expect(page).to have_content('Bring your umbrella')
  end

  scenario 'sunny' do
    # setup
    visit root_path

    # exercise
    fill_in "What's your zipcode?", with: 94702
    click_button "Is it going to rain?"
   
    # verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella needed")
  end
end
