def sign_in_and_play
  visit '/'
  within('form') do
    $game = Game.new
    fill_in 'PlayerOne', with: 'Thanos'
    fill_in 'PlayerTwo', with: 'Fat Thor'
    click_button 'Let\'s play'
  end
end