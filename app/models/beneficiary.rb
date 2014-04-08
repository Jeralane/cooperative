class Beneficiary < ActiveRecord::Base
  belongs_to :member
  has_one :contact
end
