feature 'Attack' do
  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'

    expect(page).to have_content 'John attacked Mary'
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Mary attacked John'
  end
end
