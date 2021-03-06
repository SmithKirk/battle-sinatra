feature 'Outcome' do
  context 'when player 1 reaches 0HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(10)
    end
    scenario 'player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'John loses!'
    end
  end
end
