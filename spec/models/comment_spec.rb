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
end
