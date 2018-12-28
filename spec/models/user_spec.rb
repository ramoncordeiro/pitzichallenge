require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
=begin
  context 'field empty' do
    it 'name' do
        us = FactoryBot.build(:user)
        us.name = nil
        expect.to {respond_with "name blank"}
    end
    it 'cpf' NameError:
       uninitialized constant FactoryGirl
    
  end
=end
=begin
  context 'no name' do
    let(:user){FactoryBot.build(:user, name: '')}
    it "is invalid without a name" do
      expect(user).to_not be_valid
    end
  end

  context 'without email' do
    let(:user){FactoryBot.build(:user, email: '')}
    it "is invalid without EMAIL" do
      expect(user).to_not be_valid
    end
  end
=end    
  context 'CPF Empty' do
    let(:user){FactoryBot.build(:user, cpf: nil)}
    it "field CPF is necessary" do
      expect(user.cpf).to_not be_valid
      puts user.cpf
    end
  end

  context 'CPF Wrong' do
    let(:user){FactoryBot.build(:user, cpf: FFaker::Random.rand)}
    it "CPF is invalid" do
      if !CPF.valid?(user.cpf)
        expect(user.cpf).to_not be_valid
        #puts user.cpf
      end
    end
  end

  context 'Successfully User' do
    let(:user){FactoryBot.build(:user)}
    it "Works!" do
      expect(user).to be_valid
      puts user.cpf
    end
  end

end
