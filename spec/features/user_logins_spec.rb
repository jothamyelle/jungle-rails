require 'rails_helper'

RSpec.feature "User can login successfully and is taken to the homepage", type: :feature, js: true do

  # SETUP
  before :each do
    @user = User.create!(
        name:  "User 1",
        email: "user1@user.com",
        password: "123456",
        password_confirmation: "123456"
      )
  end

  scenario "They enter their info, click submit, are logged in, and redirected to the home page" do
    # ACT
    visit '/login'

    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password

    # CLICK
    click_on 'Submit'

    # VERIFY
    expect(current_path).to eq('/')

    # DEBUG
    save_screenshot "testing.png"
  end
end