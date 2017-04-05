class Stock < ApplicationRecord
  belongs_to :value_chain
  belongs_to :industry
end
