require 'rails_helper'

RSpec.describe User, type: :model do

    context "validation" do

        it "validate game_name" do

            it { expect(@game).to validate_presence_of(:game_name) }

        end
        
    end

    context "associations" do

        describe "game_playeds" do
            it { expect(@game).to have_many(:game_playeds) }
        end

        describe "users" do
            it { expect(@game).to have_many(:users)through(:game_playeds) }
            it { expect(@game).to have_many(:users)through(:game_comments) }
        end

        describe "game_comments" do
            it { expect(@game).to have_many(:game_comments) }
        end

    end

end



        