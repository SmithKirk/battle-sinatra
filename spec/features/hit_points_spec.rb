feature 'Hit points' do
  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mary: 10HP'
  end

  scenario 'see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'John: 10HP'
  end

end
