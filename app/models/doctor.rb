class Doctor < ApplicationRecord
  has_many :patients, dependent: :destroy
  has_many :messages, as: :sender
end
