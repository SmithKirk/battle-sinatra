feature 'Switch turns' do
  # As two Players,
  # So we can continue our game of Battle,
  # We want to switch turns
  context 'seeing the current turn' do
    scenario 'at the start of a game' do
      sign_in_and_play
      expect(page).to have_content "John's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "John's turn"
      expect(page).to have_content "Mary's turn"
    end
  end
end
