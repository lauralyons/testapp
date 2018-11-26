require 'rails_helper'

describe Order do

  let(:product) { Product.create!(name: "statement ring", description:"I am a description", size: "6", price: 7, image_url: "braclet_1.jpg", colour:"green" )}
  let(:user) {User.create!(email: "test@test.com", password: "test123")}

  it "is a valid order" do
    expect(Order.new( user: user, product: product, total: 1)).to be_valid
  end
end
