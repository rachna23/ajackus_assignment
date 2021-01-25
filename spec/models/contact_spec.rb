require 'rails_helper'
RSpec.describe Contact, :type => :model do

  it "is valid with valid attributes" do
    expect(FactoryGirl.create(:contact)).to be_valid
  end

  it "is invalid with invalid attributes" do
    expect(Contact.new).to_not be_valid
  end

end