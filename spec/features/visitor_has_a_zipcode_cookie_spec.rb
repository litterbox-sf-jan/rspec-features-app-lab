require 'rails_helper'

feature 'Visitor has a zipcode in their cookies' do
  before do
    # setup
    page.driver.browser.set_cookie("zipcode=98101") 
    
    # exercise 
    visit root_path
  end

  scenario 'raining' do
    # verify
    expect(page).to have_content('Looks like rain!')
    expect(page).to have_content('Bring your umbrella')
  end
end
