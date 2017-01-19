require 'rails_helper'
 
 describe User do 
  context "when user is not valid" do
     it "check the user validation" do
       expect(User.new(password: "123")).not_to be_valid
     end
   end
  context "first and last name present" do
    let(:user) { User.new(first_name: "John", last_name: "Smith") }

    it "should return first and last" do
      expect(user.first_name).to eq "John"
      expect(user.last_name).to eq "Smith"
    end
  end

  context "first name missing" do
    let(:user) { User.new(last_name: "Smith") }

    it "should return last name only" do
      expect(user.last_name).to eq "Smith"
    end
  end

  context "last name missing" do
    let(:user) { User.new(first_name: "John") }

    it "should return first name only" do
      expect(user.first_name).to eq "John"
    end
  end

  context "no names present" do
    let(:user) { User.new(first_name: "", last_name: "") }

    it "should return nothing" do
      expect(user.first_name).to eq ""
      expect(user.last_name).to eq ""
    end
  end
end