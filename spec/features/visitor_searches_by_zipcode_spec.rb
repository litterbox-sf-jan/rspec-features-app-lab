require 'rails_helper'

feature 'Visitor searches by zipcode' do
  before do
    # setup
    visit root_path
  end

  scenario 'raining' do
    # exercise
    fill_in "What's your zipcode?", with: @zipcode = "98101"
    click_button "Is it going to rain?"
   
    # verify
    expect(page).to have_content('Looks like rain!')
    expect(page).to have_content('Bring your umbrella')
  end

  scenario 'sunny' do
    # exercise
    fill_in "What's your zipcode?", with: @zipcode = "94702"
    click_button "Is it going to rain?"
   
    # verify
    expect(page).to have_content("Sun's gonna be shining!")
    expect(page).to have_content("No umbrella needed")
  end

  after do
    expect(get_me_the_cookie('zipcode')[:value]).to eq(@zipcode)
  end
end
