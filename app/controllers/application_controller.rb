class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :account_url, :current_order

  def account_url
    return root_url unless user_signed_in?
    case current_user.class.name
    when 'Customer'
      chefs_url
    when 'Chef'
      menus_url
    else
      root_url
    end if user_signed_in?
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end


  def after_sign_in_path_for(resource)
    stored_location_for(resource) || account_url
  end
end
