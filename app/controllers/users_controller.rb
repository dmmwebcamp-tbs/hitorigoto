class UsersController < ApplicationController

# 管理人サイド
  def new
    @user =User.new
    @message =Message.new
  end


  def usersearch
    #Viewのformで取得したパラメータをモデルに渡す
  end

  def index
    @users = User.search(params[:search])
    render layout: false
  end

  def show
    @user = User.find(params[:id])
    @message = Message.find(@user.id)
    render layout: false
  end

  def admin_update
    user =User.find(params[:user_id])
    if user.update(user_params)
      flash[:success] = "successfully updated."
      redirect_to user_path(user.id)
    end
  end

  def all_delivery
    @users = User.all
    render layout: false
  end

  def all_history
    # @users = User.all
    @user = User.find(params[:id])
    # ユーザーに紐づくpurchasesの情報を取得する。
    @user = @user.purchases
    # purchasesに紐づくhistoryの情報を取得する。
    @user = @user.histories
    render layout: false
  end

  def all_destroy
  end

# ユーザサイド

  # ユーザ情報編集

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
       flash[:notice] = "ERROR!!編集する権限がありません。"
       redirect_to user_mypage_path(current_user.id)
      end
  end

  def update
    @user = User.find(params[:id])
    if    @user.update(user_params)
          flash[:notice] = "User was successfully updated."
          redirect_to user_mypage_path(@user.id)
    else  render 'edit'
    end
  end


	# ユーザ退会
  # def unsubscribe
  # end
	# ユーザ登録情報削除（論理削除）
  # def destroy
  # end

	# ユーザ購入履歴一覧表示
  def history
  end

  def mypage
    @user = User.find(params[:user_id])
  end


private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :address, :phone_number, :reply)
  end


end
