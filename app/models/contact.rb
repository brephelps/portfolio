class Contact < ApplicationRecord
  validates :message, presence: true
  validates :name, presence: true
  validates :email, presence: true
end
