require 'rails_helper'

RSpec.describe GameComment, type: :model do

    context "associations" do
        describe "user" do
        it {expect(@game_comment).to belong_to(:user)}
        end
        describe "game" do
        it{expect(@game_comment).to belong_to(:game)}
        end

    end
    
end