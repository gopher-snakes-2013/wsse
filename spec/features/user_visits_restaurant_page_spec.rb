require 'spec_helper'

describe "user visits a restaurant page" do
let!(:restaurant) { FactoryGirl.create(:restaurant) }
let!(:comment) { FactoryGirl.create(:comment) }
  it "can add a comment" do
    visit restaurant_path(restaurant)
    fill_in 'comment_content', with: "eat the burrito"
    click_on "Submit"
    expect(page).to have_content "eat the burrito"
  end

  it "can vote on a comment", :js => true do 
    visit restaurant_path(restaurant)
    expect {
    click_on('Yes')
    }.to change{comment.votes_for}.by(1)
  end
end
