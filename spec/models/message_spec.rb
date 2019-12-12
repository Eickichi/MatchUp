require 'rails_helper'

RSpec.describe Message, type: :model do

    context "associations" do

        describe "message" do
        it{ expect(@message).to belong_to(:conversation)}
        it{ expect(@message).to belong to(:user)}
        
        end

        context "validation" do

                it"validate message" do                            
                it{expect(@message).to validate_presence_of(:body),(:conversation_id),(:user_id) }
            end
        end


    end


