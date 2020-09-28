require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe "should save into db" do
    before do
      @user = Contact.new(first_name: "test first",last_name: "test_last", email: 'test@ajackus.com',phone_number: "+919840515100",message: "test")
    end
    it "is valid" do
      expect(@user).to be_valid
    end

    it "inserts into DB" do
      expect{@user.save}.to change { Contact.count }.by(1)
    end
  end
  describe "shouldnot save into db" do
    context "When any field value missing" do

      it "email invalid" do
        user = Contact.new(first_name: "test first",last_name: "test_last", email: 'test',phone_number: "+919840515100",message: "test")
        expect(user).not_to be_valid
      end
      it "phone invalid" do
        user = Contact.new(first_name: "test first",last_name: "test_last", email: 'test@test.com',phone_number: "9840515100",message: "test")
        expect(user).not_to be_valid
      end
      it "message invalid" do
        user = Contact.new(first_name: "test first",last_name: "test_last", email: 'test',phone_number: "+919840515100",message: "")
        expect(user).not_to be_valid
      end

      it "first_name invalid" do
        user = Contact.new(first_name: "",last_name: "test_last", email: 'test',phone_number: "+919840515100",message: "test")
        expect(user).not_to be_valid
      end
      it "last_name invalid" do
        user = Contact.new(first_name: "test first",last_name: "", email: 'test',phone_number: "+919840515100",message: "test")
        expect(user).not_to be_valid
      end
    end
  end

end
