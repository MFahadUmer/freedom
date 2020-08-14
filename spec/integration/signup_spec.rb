require 'rails_helper'
RSpec.describe 'Creates a new account', type: :feature do
  let(:user) { User.create!(username: 'Mohammad', fullname: 'Muhammad Fahad Umer') }
  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[username]', with: 'Mohammad'
    fill_in 'user[fullname]', with: 'Muhammad Fahad Umer'
    click_button 'Free Yourself'
    expect(page).to have_content('Muhammad Fahad Umer')
  end
end
