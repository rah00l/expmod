class Entry < ActiveRecord::Base
  belongs_to :expense_perticuler
  belongs_to :expense
end
