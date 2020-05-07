# frozen_string_literal: true

class Fund < ApplicationRecord
  has_many :investor_fund_details
end
