require 'rails_helper'
RSpec.describe 'Creates a new account', type: :feature do
  let(:user) { User.create!(username: 'Mohammad', fullname: 'Muhammad Fahad Umer') }
  scenario 'Access to homepage after login' do
    visit new_session_path
    fill_in 'username', with: 'James'
    click_button 'Login'
    expect(page).to have_content('Username not found. Try again.')
  end
end
