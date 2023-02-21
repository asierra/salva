class UserProfilesController < ApplicationController
  layout 'user_resources'
  def show
    respond_with(@user = User.find(current_user.id))
  end

  def edit
    respond_with(@user = User.find(current_user.id))
  end

  def update
    @user = User.find(current_user.id)
    @user.update_attributes(user_params)
    respond_with(@user, :status => :ok, :location => user_profile_path)
    update_related_records
  end

  def update_related_records
    Address.find(user_params['address_attributes']['id']).update(user_params['address_attributes'])
    Person.find(user_params['person_attributes']['id']).update(user_params['person_attributes'])
  end

  private

  def user_params
    params.require(:user).permit(address_attributes: [:id, :addresstype_id, :building_id, :location, :pobox, :country_id, :state_id, :city_id, :zipcode, :phone, :phone_extension, :fax, :is_postaddress], person_attributes: [:contact_name_1, :contact_phonenumber_1, :contact_name_2, :contact_phonenumber_2, :contact_name_3, :contact_phonenumber_3, :medical_condition, :medical_instruction, :hospital, :insurance, :id])
  end
end
