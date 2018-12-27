require 'ffaker'
FactoryBot.define do
    factory :order do
        imei: {FFaker::Integer}
        modelo: {FFaker::lorem.word}
        valor_anual: {FFaker::Decimal}
        num_parcelas: {FFaker::Integer}
        #cpf: #VERIFICAR COMO FICARA CPF
    end
end 