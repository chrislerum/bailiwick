require 'rails_helper'
RSpec.describe 'Home page' do
  it 'shows an interest' do
    create(:interest, name: 'butter', description: 'The fiddler crab THIS IS A LONG PART TO TEST TRUNCATION EH is very very nice.')
    visit root_path
    expect(page).to have_text('The fiddler crab')
    expect(page).to have_no_text('is very very nice.')
    click_link 'Detail'
    expect(page).to have_text('is very very nice.')
  end
end
