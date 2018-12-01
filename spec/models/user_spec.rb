require 'rails_helper'

describe User do
    context "when user is present" do
      before do
        @user = FactoryBot.create(:user)
      end

        it "is valid with email and password" do
            expect(@user).to be_valid
        end
      end
    end
