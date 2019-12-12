require 'rails_helper'

RSpec.describe GameComment, type: :model do

    context "associations" do
        
        describe "sender" do
            it{expect(@conversation);to belong_to(:sender)}
        end

        describe "recipient" do
            it{expect(@conversation);to belong_to(:sender)}
        end

        describe "messages" do
            it{expect(@conversation);to have_many(:messages)}
        end

    end

    context "validations" do

        it "should validate sender_id" do
            it {expect(@conversation).to validate_uniqueness_of(:sender_id)}
        end
        
    end

end


