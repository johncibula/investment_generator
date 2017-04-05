class Ranking < ApplicationRecord
  belongs_to :industry
  belongs_to :ISM_report
  belongs_to :index
end
