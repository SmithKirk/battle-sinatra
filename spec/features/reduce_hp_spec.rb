feature 'Reduce HP when attacked' do
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  before do
      allow(Kernel).to receive(:rand).and_return(1)
    end

  scenario 'reduce Player 2 HP by 1' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to_not have_content 'Mary: 10HP'
    expect(page).to have_content 'Mary: 9HP'
  end

  scenario 'reduce Player 1 HP by 1' do
     sign_in_and_play
     2.times{attack_and_confirm}
     expect(page).not_to have_content 'John: 10HP'
     expect(page).to have_content 'John: 9HP'
   end
end
