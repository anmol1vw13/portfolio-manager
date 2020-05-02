ActiveAdmin.register InvestorFundDetail do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :money, :fund_id, :investor_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:money, :fund_id, :investor_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
