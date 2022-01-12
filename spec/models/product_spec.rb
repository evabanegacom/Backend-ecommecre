require 'rails_helper'

RSpec.describe Product, :type => :model do

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
    it { should have_many(:reviews) }
  end
  describe "Create product" do
    it "only admins can create products" do
    user = User.create(name: 'Precious', email: 'precious@yaho.com', password: 'precious', password_confirmation: 'precious', admin: true)

    product = Product.new(name: "Iphone5",
                        description: "Good phone",
                        category: 'electronics',
                        avatar: 'https://www.iphone.org',
                        price: 500.0,
                        user_id: user.id).save
  
  expect(product).to eql(true)
    end
  end

  describe "Creates product" do
    it "Can't create products without a user Id" do
    user2 = User.create(name: 'Precious', email: 'precious@yahoooo.com', password: 'precious', password_confirmation: 'precious', admin: true)

    
    product = Product.new(name: "Iphone6",
                        description: "Good phone",
                        category: 'electronics',
                        avatar: 'https://www.iphone.org',
                        price: 500.0,
                        ).save
    
    # expect(subject.errors).to be_empty
    
  expect(product).to eql(false)
    end
  end
end
