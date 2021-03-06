class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  PAYMENT_TYPES = [ "Check", "Credit Card", "Purchase Order"]

end
