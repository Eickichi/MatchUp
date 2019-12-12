require 'rails_helper'

RSpec.describe EventComment, type: :model do

    context "associations" do
        describe "user" do
        it {expect(@event_comment).to belong_to(:user)}
        end
        describe "event" do
        it{expect(@event_comment).to belong_to(:event)}
        end

    end
    
end