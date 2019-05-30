feature 'Battle' do 
  scenario 'enter player names in form and see names displayed' do 
    sign_in_and_play
    expect(page).to have_content('Thanos') 
  end

  scenario 'enter player names in form and see names displayed' do 
    sign_in_and_play
    expect(page).to have_content('Fat Thor') 
  end

  scenario 'enter names and see player 2 HP' do
    sign_in_and_play
    expect(page).to have_css('#player2_HP', text: '50')
  end

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 has attacked'
  end

  scenario 'player 1 attacks player 2; reduces player 2 HP' do 
    sign_in_and_play
    click_button 'Attack'
    click_button 'Go back!'
    expect(page).to have_css('#player2_HP', text: '40')
  end

  scenario 'enter names and see player 1 HP' do
    sign_in_and_play
    expect(page).to have_css('#player1_HP', text: '50')
  end

  scenario 'player 2 attacks player 1; reduces player 1 HP' do 
    sign_in_and_play
    click_button 'Attack'
    click_button 'Go back!'
    click_button 'Attack'
    click_button 'Go back!'
    expect(page).to have_css('#player1_HP', text: '40')
  end
end 
