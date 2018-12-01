require 'rails_helper'

describe Order do

  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
  end

  it "is a valid order" do
    expect(Order.new( user: @user, product: @product, total: 1)).to be_valid
  end
end
