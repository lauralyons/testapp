require 'rails_helper'

describe Comment do
  context "when the product has comments" do
    let(:user){ Comment.create(:user) }
    let(:product) { Product.create!(name: "statement ring", description:"I am a description", size: "6", price: 7, image_url: "braclet_1.jpg", colour:"green" )}

    before do
        product.comments.create!(body: "super cool")
        it "not valid without a body"
        expect(comment.body).to_not_be_valid
    end
  end
end
