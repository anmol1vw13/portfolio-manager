# frozen_string_literal: true

ActiveAdmin.register Investment do
  permit_params :round, :investment_date, :timestamp, :pre_money, :company_id
  belongs_to :company
  sidebar 'Subcomponents', only: %i[show edit] do
    ul do
      li link_to 'Investment Details', admin_investment_investment_details_path(resource)
    end
  end
end
