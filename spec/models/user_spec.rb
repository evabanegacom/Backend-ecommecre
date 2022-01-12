require 'rails_helper'

RSpec.describe User, type: :feature do
  context 'Validation tests' do
    it 'ensures name presence' do
      user = User.new(name: '', email: 'precious@yaho.com', password: 'precious', password_confirmation: 'precious').save
      expect(user).to eql(false)
    end

    it 'ensures email presence' do
      user = User.new(name: 'Precious', email: '', password: 'precious', password_confirmation: 'precious').save
      expect(user).to eql(false)
    end

    it 'ensures password presence' do
      user = User.new(name: 'Precious', email: 'precious@yaho.com', password: '', password_confirmation: 'precious').save
      expect(user).to eql(false)
    end

    it 'ensures password_confirmation' do
      user = User.new(name: 'Precious', email: 'precious@yaho.com', password: 'precious', password_confirmation: '').save
      expect(user).to eql(false)
    end

    it 'ensures password and passsword_confirmation should match' do
      user = User.new(name: 'Precious', email: 'precious@yaho.com', password: 'precious', password_confirmation: 'precious5').save
      expect(user).to eql(false)
    end

    it 'ensures has a default phone and admin value' do
      user = User.new(name: 'Precious', email: 'precious@yaoo.com', password: 'precious', password_confirmation: 'precious').save
      expect(user).to eql(true)
    end
  end
end
