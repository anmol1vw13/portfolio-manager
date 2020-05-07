# frozen_string_literal: true

ActiveAdmin.register Company do
  permit_params :name, :registered_name, :founded, :sector

  form do |f|
    f.inputs 'Details' do
      f.input :name, input_html: { required: true }
      f.input :registered_name, input_html: { required: true }
      f.input :founded, input_html: { required: true }
      f.input :sector, input_html: { required: true }
    end
    f.submit
  end
  sidebar 'Subcomponents', only: %i[show edit] do
    ul do
      li link_to 'Founders', admin_company_founders_path(resource)
      li link_to 'Financials', admin_company_company_financials_path(resource)
      li link_to 'Investments', admin_company_investments_path(resource)
    end
  end
end
