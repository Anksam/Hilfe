require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Creation' do

    before do
      @user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Ankesh", last_name: "Samarth", username: "Ankesh11")
    end

    it 'should be able to be created if valid' do
      expect(@user).to be_valid
    end

    describe 'validation' do
      it "should not be valid without first_name" do
        @user.first_name = nil
        expect(@user).to_not be_valid
      end

      it "should not be valid without last_name" do
        @user.last_name = nil
        expect(@user).to_not be_valid
      end

      it "should not be valid without username" do
        @user.username = nil
        expect(@user).to_not be_valid
      end

      it "should ensure that all usernames are valid" do
        duplicate_username_user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "Ankesh", last_name: "Samarth", username: "Ankesh11")
        expect(duplicate_username_user).to_not be_valid
      end
    end

  end

end
