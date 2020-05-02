ActiveAdmin.register Investment do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :round, :investment_date, :timestamp, :pre_money, :company_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:round, :investment_date, :timestamp, :pre_money, :company_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
