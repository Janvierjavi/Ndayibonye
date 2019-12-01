
require 'rails_helper'

RSpec.describe User, type: :model do
  it "validation does not pass if the email is empty" do
    user = User.new( email: '', first_name: 'Failure test', address:'failsn', tel_phone:'i.d')
    expect(user).not_to be_valid
  end

  it "validation does not pass if the first name is empty" do
    user = User.new(email: 'name@gh.com', first_name: ' ', address:'failsn', tel_phone:'i.d')
    expect(user).not_to be_valid
  end

  it "validation does not pass if the address is empty " do
    user = User.new(email: 'name@gh.com', first_name: 'Failure test', address:'', tel_phone:'i.d')
    expect(user).not_to be_valid
  end

  it "validation does not pass if the tel_phone is empty" do
    user = User.new(email: '', first_name: 'Failure test', address:'failsn', tel_phone:'i.d')
    expect(user).not_to be_valid
  end
  
  it "validation pass if the tel_phone, email, first_name address are fill in " do
    user = User.new(email: 'janv@gmial.com', first_name: 'Failure test', address:'failsn', tel_phone:'i.d')
    expect(user)
  end

end