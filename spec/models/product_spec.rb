require 'rails_helper'

describe Product do

  context "when the product has comments" do
    let(:product) { Product.create!(name: "statement ring", description:"I am a description", size: "6", price: 7, image_url: "braclet_1.jpg", colour:"green" )}
    let(:user) {User.create!(email: "test@test.com", password: "test123")}


    before do
      product.comments.create!(rating: 1, user: user, body: "Awful ring!")
      product.comments.create!(rating: 3, user: user, body: "Ok ring!")
      product.comments.create!(rating: 5, user: user, body: "Great ring!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end
    it "is not valid without a name" do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end
  end
end
