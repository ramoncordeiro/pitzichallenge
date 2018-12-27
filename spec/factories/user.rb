require 'ffaker'
FactoryBot.define do
    factory :user do
        name: {FFaker::Name.name}
        email: {FFaker::Internet.email}
        #cpf: #VERIFICAR COMO FICARA CPF
    end
end 