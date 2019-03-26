module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def decode_category(category)
  	if category == 0
  		"邦楽"
  	else
  		"洋楽"
  	end
  end
end
