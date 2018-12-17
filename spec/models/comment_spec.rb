require 'rails_helper'

describe Comment do
  context "when the product has comments" do
    before do
      @user = FactoryBot.create(:user)
      @product = FactoryBot.create(:product)
    end

    before do
        @product.comments.create!(body: "super cool")
        it "not valid without a body"
        expect(comment.body).to_not_be_valid
    end
  end
    context "when a user leaves a comment" do
    let(:comment) { Comment.create!(body: "Comment here", rating: "1") }

    it "is not valid without a rating" do
      expect(Comment.new(rating: 1)).not_to be_valid
    end

    it "is not valid without a body" do
      expect(Comment.new(body: "Some comment")).not_to be_valid
    end

    it "is not valid without a user" do
      expect(Comment.new(user_id: 70223388757640)).not_to be_valid
    end

    it "is not valid without a user" do
      expect(Comment.new(product_id: 1)).not_to be_valid
    end
  end
end
