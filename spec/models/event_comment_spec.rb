require 'rails_helper'

RSpec.describe EventComment, type: :model do

    context "associations" do
        it {expect(@event_comment).to belong_to(:user)}
        it{expect(@event_comment).to belong_to(:event)}

    end
    
end