require 'rails_helper'
require 'faker'
require 'byebug'

RSpec.describe "Contacts", type: :request do

  describe "POST #create" do
    context "with valid attributes" do
      it "create new contact" do
      	FactoryGirl.create(:contact)
        expect(Contact.count).to eq(1)
      end
    end
  end

end
  


