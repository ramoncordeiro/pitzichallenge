require 'ffaker'
FactoryBot.define do
    factory :order do
        imei {(15.times.map{rand(10)}.join).to_s} #{FFaker::String}#(15, :numeric)}
        modelo {FFaker::Lorem.word}
        valor_anual {rand(100.00..999.90)}
        num_parcelas {FFaker::Random.rand(1..12)}
        #cpf: #VERIFICAR COMO FICARA CPF
    end
end 