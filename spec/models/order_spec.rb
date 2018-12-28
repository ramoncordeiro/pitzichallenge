require 'rails_helper'

RSpec.describe Order, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context 'imei Empty' do
    let(:order){FactoryBot.build(:order, imei: nil)}
    it 'IMEI empty' do
      expect(order).to_not be_valid
      puts "#{order.valor_anual} imei: #{order.imei}"
    end
  end

  context 'imei wrong' do
    let(:order){FactoryBot.build(:order, imei: (Random.srand).to_s )}
    it 'IMEI empty' do
      expect(order.imei.size).to be > 14 #and < 16#and < 17
      expect(order.imei.size).to be < 16 #and < 17
      puts "#{order.valor_anual} imei_wrong: #{order.imei}"
    end
  end
  #valid
  
  context 'valor_anual empty' do
    let(:order){FactoryBot.build(:order, valor_anual: nil)}
    it 'valor_anual empty' do
      expect(order.valor_anual).to_not be_valid
      #puts order
    end
  end

  context 'Modelo' do
    let(:order){FactoryBot.build(:order, modelo: nil)}
    it 'modelo empty' do
      expect(order.modelo).to_not be_valid
      #puts order
    end
  end


  context 'Sucesso' do
    let(:order){FactoryBot.build(:order)}
    it 'Successully!' do
      expect(order.modelo).to be_valid
      #puts order
    end
  end


end
