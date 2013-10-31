describe VotesController do
  let!(:comment){Comment.create(user_id: 1, content: "words", restaurant_id: 1)}
  let!(:attributes){{user_id: 1, comment_id: 1, opinion: true}}

  context "#create" do
    xit "creates a vote" do
      # comment
      # expect {
      #   post :create, restaurant_id: 1, post: attributes
      # }.to change{Comment.count}.by(1)
    end
  end
end