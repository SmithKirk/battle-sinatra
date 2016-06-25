feature 'Reduce HP when attacked' do
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'reduce Player 2 HP by 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to_not have_content 'Mary: 10HP'
    expect(page).to have_content 'Mary: 9HP'
  end

  scenario 'reduce Player 1 HP by 1' do
     sign_in_and_play
     click_button 'Attack'
     click_button 'OK'
     click_button 'Attack'
     click_button 'OK'
     expect(page).not_to have_content 'John: 10HP'
     expect(page).to have_content 'John: 9HP'
   end
end
