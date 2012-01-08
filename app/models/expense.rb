class Expense < ActiveRecord::Base
  has_many :entries, :dependent => :destroy
  has_many :expense_perticulers , :through => :entries
  accepts_nested_attributes_for :expense_perticulers, :allow_destroy => true

end
