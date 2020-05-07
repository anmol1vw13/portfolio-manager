# frozen_string_literal: true

class Investor < ApplicationRecord
  has_many :investor_key_members
end
