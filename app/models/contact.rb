class Contact < ActiveRecord::Base
  has_many :addresses
  belongs_to :member
end
