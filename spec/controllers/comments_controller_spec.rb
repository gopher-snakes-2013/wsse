require 'spec_helper'

describe CommentsController do
  let(:restaurant){FactoryGirl.create(:restaurant)}
  let(:user){FactoryGirl.create(:user)}


  context "#create" do
    it "creates a comment" do
      expect {
        post :create, restaurant_id: restaurant.id, comment: {content: "hey"}, user_id: user.id
      }.to change{Comment.count}.by(1)
    end

    it "doesn't create a comment with invalid params" do
      expect {
        post :create, restaurant_id: restaurant.id, comment: {content: "  "}, user_id: user.id
      }.to_not change{Comment.count}
    end
  end

end
