class Member < ActiveRecord::Base
  has_many :beneficiaries
  has_one :contact
end
