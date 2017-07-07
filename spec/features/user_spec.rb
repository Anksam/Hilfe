require 'rails_helper'

describe 'user navigation' do
  describe 'creation' do
    it "can register with full set of attributes" do
      visit new_user_registration_path

      fill_in 'user[email]', with: "test@test.com"
      fill_in 'user[password]', with: "password"
      fill_in 'user[password_confirmation]', with: "password"
      fill_in 'user[first_name]', with: "Ankesh"
      fill_in 'user[last_name]', with: "Samarth"
      fill_in 'user[username]', with: "Ankesh11"

      click_on "Sign up"
      expect(page).to have_content("welcom")
    end
  end
end
