class Client < ActiveRecord::Base
  belongs_to :plan
  has_one :spouse
  has_one :address

  accepts_nested_attributes_for :spouse, :address

end
