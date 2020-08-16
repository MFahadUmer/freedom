require 'rails_helper'
RSpec.describe 'Creates a new account', type: :feature do
  let(:user) { User.create!(username: 'Mohammad', fullname: 'Muhammad Fahad Umer') }
  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[username]', with: 'Ali'
    click_button 'Free Yourself'
    expect(page).to have_content("Fullname can't be blank")
  end

  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[fullname]', with: 'Muhammad Fahad Umer'
    click_button 'Free Yourself'
    expect(page).to have_content("Username can't be blank")
  end

  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[fullname]', with: 'Muham'
    click_button 'Free Yourself'
    expect(page).to have_content('Fullname is too short')
  end

  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[username]', with: 'Muham'
    fill_in 'user[fullname]', with: 'Muhammad Fahad Umer'
    click_button 'Free Yourself'
    expect(page).to have_content('Username is too short')
  end
end
