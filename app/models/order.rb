class Order < ApplicationRecord
  belongs_to :user
  validates :imei, presence: true
  validates :valor_anual, presence: true
  validates :modelo, presence: true
end
