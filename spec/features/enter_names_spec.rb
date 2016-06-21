feature 'name form' do
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario 'submit name' do
    visit '/'
    fill_in :p1_name, with: 'John'
    fill_in :p2_name, with: 'Mary'
    click_button 'Submit'
    expect(page).to have_content 'John vs Mary'
  end

end
