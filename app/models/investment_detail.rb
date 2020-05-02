class InvestmentDetail < ApplicationRecord
  belongs_to :investor
  belongs_to :investment
end
