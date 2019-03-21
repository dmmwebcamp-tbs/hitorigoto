class ApplicationController < ActionController::Base


	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number ])
	end

# アプリケーションを完成させよう２：「２章ーログイン機能を作ろう」を参照。

    protect_from_forgery with: :exception
    # 第 1 引数 => model名 :user (必須)
    # 第 2 引数 => column名 :name (必須)
    # 第 3 引数 => オプション full: true (任意)
  	autocomplete :user, :email, full: true


end
