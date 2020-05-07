# frozen_string_literal: true

ActiveAdmin.register Investor do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :type
  sidebar 'Subcomponents', only: %i[show edit] do
    ul do
      li link_to 'Key Members', admin_investor_investor_key_members_path(resource)
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
