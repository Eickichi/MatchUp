require 'rails_helper'

RSpec.describe User, type: :model do

before(:each) do
    @user = User.create
end  

#context "validation" do 

 #   it "validates email" do
#       it{expect(@user).to validate_presence_of(:email)}
 #      it{expect(@user).to validate_uniqueness_of(:email)}
  #  end
    
   # it "validates password" do
    #    it {expect(@user).to validate_lenght_of(:password) is_at_least(6)}
    #nd
#end

context "associations" do 

     describe "attendances" do
        it{ expect(@user).to have_many(:attendances)}
     end

      describe "events" do
        it{ expect(@user).to have_many(:events)through(:attendances)}
        it{ expect(@user).to have_many(:events)through(:events_comments)}
     end

     describe "created_events" do
        it{ expect(@user).to have_many(:created_events)}
     end

     describe "game_playeds" do
        it{ expect(@user).to have_many(:game_playeds)}
     end

     describe "games" do
        it{ expect(@user).to have_many(:games)through(:game_playeds)}
        it{ expect(@user).to have_many(:games)through(:game_comments)}
     end

     describe "game_comments" do
        it{ expect(@user).to have_many(:game_comments)}
     end

     describe "events_comments" do
        it{ expect(@user).to have_many(:events_comments)}
     end

     describe "conversations" do
        it{ expect(@user).to have_many(:conversations)}
     end


   end

end   
    
