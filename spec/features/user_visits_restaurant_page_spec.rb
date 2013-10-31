require 'spec_helper'

describe "user visits a restaurant page" do
let!(:restaurant) { FactoryGirl.create(:restaurant)}

  xit "can add a comment", js: true do
    visit restaurant_path(restaurant)
    fill_in 'comment_content', with: "eat the burrito"
    click_on "Submit"
    expect(page).to have_content "eat the burrito"
  end
end
