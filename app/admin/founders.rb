# frozen_string_literal: true

ActiveAdmin.register Founder do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  belongs_to :company, parent_class: Company
  permit_params :name, :email, :position, :mobile, :company_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :position, :mobile, :company_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
