class User::SessionsController < Devise::SessionsController
  def new_guest
    user = User.new
    sign_in user
    redirect_to root_path, notice: "ゲストユーザーとしてログインされました"
  end
end