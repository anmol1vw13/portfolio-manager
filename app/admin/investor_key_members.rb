# frozen_string_literal: true

ActiveAdmin.register InvestorKeyMember do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  belongs_to :investor
  permit_params :name, :email_id, :mobile, :investor_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email_id, :mobile, :investor_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
