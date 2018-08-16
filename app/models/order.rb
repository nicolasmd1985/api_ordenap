class Order < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {minimum: 10}
  validates :description, presence: true, length: {minimum: 20}

end
