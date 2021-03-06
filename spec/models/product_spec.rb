require 'rails_helper'

describe Product do

  context "when the product has comments" do
    before do
      @user = FactoryBot.create(:user)
      @product = FactoryBot.create(:product)
    end


    before do
      @product.comments.create!(rating: 1, user: @user, body: "Awful ring!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok ring!")
      @product.comments.create!(rating: 5, user: @user, body: "Great ring!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
    
    it "is not valid without a name" do
			expect(Product.new(name: "Something")).not_to be_valid
		end

		it "is not valid without a description" do
			expect(Product.new(description: "Something")).not_to be_valid
		end

		it "is not valid without a price" do
			expect(Product.new(price: 1111)).not_to be_valid
		end
  end
end
