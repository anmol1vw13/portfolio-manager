# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :founders
  has_many :company_financials
  has_many :investments
end
