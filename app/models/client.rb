class Client < ApplicationRecord
  has_many :calls, dependent: :destroy
  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true, uniqueness: true
end
