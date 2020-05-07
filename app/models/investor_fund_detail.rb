# frozen_string_literal: true

class InvestorFundDetail < ApplicationRecord
  belongs_to :fund
  belongs_to :investor
end
