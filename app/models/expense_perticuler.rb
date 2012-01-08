class ExpensePerticuler < ActiveRecord::Base
  has_many :entries, :dependent => :destroy
  has_many :expenses , :through => :entries
end
