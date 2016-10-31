require  'rails_helper'

Rspec.describe Mentor, type: :model do
describe "user log in" do
  it "allows an existing user to sign in" do
    User.create!(email: "me@home.com", password: "111111", admin:true)

    visit "/mentors/sign_in"

    fill_in "Email", with: "me@example.com"
    fill_in "Password", with: "111111"

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end
end