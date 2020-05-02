ActiveAdmin.register InvestmentDetail do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :money, :percentage_holding, :investor_id, :investment_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:money, :percentage_holding, :investor_id, :investment_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
