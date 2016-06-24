feature 'Reduce HP when attacked' do
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario 'player 2 hp is reduced when attacked' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).to_not have_content 'Mary: 10HP'
    expect(page).to have_content 'Mary: 9HP'
  end
end
