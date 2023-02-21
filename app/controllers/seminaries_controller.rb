class SeminariesController < PublicationController
  defaults :user_role_class => :user_seminaries, :role_class => :roleinseminary, :resource_class_scope => :as_not_attendee

  def seminary_params
    params.require(:seminary).permit(:instructors, :title, :seminarytype_id, :year, :month, :institution_id,
     user_seminaries_attributes: [:user_id, :roleinseminary_id])
  end
end
