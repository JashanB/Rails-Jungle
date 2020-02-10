require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe 'Validations' do
    it "is valid with valid attributes" do
      user = User.new(name: 'a', email: 'a', password: 'abc', password_confirmation: 'abc')
      expect(user).to be_valid
    end
  end
  describe 'Validations' do
    it "is not valid without valid email" do
      user = User.new(name: 'a', password: 'abc', password_confirmation: 'abc')
      expect(user).to_not be_valid
    end
  end
  describe 'Validations' do
    it "is not valid without valid password" do
      user = User.new(name: 'a', email: 'a')
      expect(user).to_not be_valid
    end
  end
  describe 'Validations' do
    it "is not valid without valid password length" do
      user = User.new(name: 'a', email: 'a', password: 'a', password_confirmation: 'a')
      expect(user).to_not be_valid
    end
  end
  describe 'Validations' do
    it "is not valid without valid password confirmation" do
      user = User.new(name: 'a', email: 'a', password: 'abc', password_confirmation: 'ab')
      expect(user).to_not be_valid
    end
  end
  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end
end
