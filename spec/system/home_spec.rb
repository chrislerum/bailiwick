require 'rails_helper'
RSpec.describe 'Home page', type: :system do
  it 'shows an interest' do
    create(:interest, name: 'Interest', description: 'The fiddler crab THIS IS A LONG PART TO TEST TRUNCATION EH is very very nice.')
    visit root_path
    expect(page).to have_text('The fiddler crab')
    expect(page).to have_no_text('is very very nice.')
    click_link 'Interest'
    expect(page).to have_text('is very very nice.')
  end

  it "shows a hindrance" do
    create(:hindrance, name: 'Hindrance', description: 'This is the THIS IS A LONG PART TO TEST TRUNCATION EH and that is that.')
    visit root_path
    expect(page).to have_text('This is the')
    expect(page).to have_no_text('and that is that.')
    click_link 'Hindrance'
    expect(page).to have_text('and that is that.')
  end

  it "shows an excuse" do
    create(:excuse, name: 'Excuse', description: 'The beginning THIS IS A LONG PART TO TEST TRUNCATION EH and the end.')
    visit root_path
    expect(page).to have_text('The beginning')
    expect(page).to have_no_text('and the ene.')
    click_link 'Excuse'
    expect(page).to have_text('and the end.')
  end
end
