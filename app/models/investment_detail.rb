# frozen_string_literal: true

class InvestmentDetail < ApplicationRecord
  belongs_to :investor
  belongs_to :investment
end
