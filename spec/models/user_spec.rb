require 'rails_helper'
RSpec.describe User, type: :model do 
  it"user должен иметь имя" do 
    user = User.new(first_name: nil) 
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end
  
  
end