# frozen_string_literal: true

ActiveAdmin.register Fund do
  permit_params :name, :key, :formation_date
  sidebar 'Subcomponents', only: %i[show edit] do
    ul do
      li link_to 'Investor Fund Details', admin_fund_investor_fund_details_path(resource)
    end
  end
end
