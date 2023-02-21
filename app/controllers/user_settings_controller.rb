class UserSettingsController < ApplicationController
  layout 'user_resources'
  def show
    respond_with(@user = User.find(current_user.id))
  end

  def edit
    respond_with(@user = User.find(current_user.id))
  end

  def update
    @user = User.find(current_user.id)
    @user.modified_by_id = current_user.id
    @user.update(user_params)
    respond_with(@user, :status => :ok, :location => user_settings_path)
  end

  def user_params
    params.require(:user).permit(:homepage, :blog, :calendar, :homepage_resume, :homepage_resume_en)
  end
end
