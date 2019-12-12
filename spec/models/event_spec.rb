require 'rails_helper'

RSpec.describe Event, type: :model do

    context "validation" do

        it "validates event_date" do
            { expect(@event).to validate_presence_of(:event_date) }
        end
        
        it "validate event_star" do
            { expect(event);to validate(:event_start) }
        end

         it "validate duration" do
             { expect(@event).to validate_presence_of(:duration) }
         end

         it"validate time_gate" do
             { expect(@event).to validate(:time_gate) }
         end

         it"validate event_name" do
            { expect(@event).to validate_lenght_of(:event_name).is_at_least(5) }
         end
         
         it"validate city" do
             { expect(@event).to validate_presence_of(:city) }
         end

         it "validate game_played" do

             { expect(@event).to validate_presence_of(:game_played) }
         end
         
        end

        context "associations" do

            describe"attendances" do
                
            end

         end
   end  