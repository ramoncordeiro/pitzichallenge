require 'ffaker'
require 'cpf_cnpj'
FactoryBot.define do
    factory :user do
        id {FFaker::Random.rand(0..10000)}
        name {FFaker::Name.name}
        email {FFaker::Internet.email}
        #cpf: #VERIFICAR COMO FICARA CPF
        cpf {CPF.generate}
    end
end 