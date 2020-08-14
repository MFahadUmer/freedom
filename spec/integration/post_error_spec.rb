require 'rails_helper'
RSpec.describe 'Creates a new account', type: :feature do
  let(:user) { User.create!(username: 'Mohammad', fullname: 'Muhammad Fahad Umer') }
  scenario 'Access to homepage after login' do
    visit new_session_path
    fill_in 'username', with: user.username
    click_button 'Login'
    expect(page).to have_content('Muhammad Fahad Umer')
    fill_in 'opinion', with: 'Hello!'
    click_button 'Post your Opinion'
    expect(page).to have_content('Your opinion can not be empty or less than 10 characters.')
  end
end
