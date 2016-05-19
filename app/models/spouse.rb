class Spouse < ActiveRecord::Base
  belongs_to :client
  has_one :address
end
