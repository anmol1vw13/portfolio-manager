ActiveAdmin.register CompanyFinancial do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :date, :revenue, :burn, :closing_cash, :company_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:date, :revenue, :burn, :closing_cash, :company_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
