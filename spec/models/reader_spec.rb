require 'spec_helper'

describe Reader do
  it "should succeed login with correct auth" do
    reader = create(:reader, email: 't@u.com', password: 'yahoo')
    Reader.authenticate('t@u.com', 'yahoo').should eq reader
  end

  it "should fail with incorrect password" do
    reader = create(:reader, email: 't@u.com', password: 'yahoo')
    Reader.authenticate('t@u.com', 'NOTYAHOO').should be_false
  end

  it "should fail with duplicate emails" do
    reader = create(:reader, email: 't@u.com', password: 'yahoo')
    reader2 = build(:reader, email: 't@u.com', password: 'yahoo')
    reader2.should_not be_valid
  end
end
