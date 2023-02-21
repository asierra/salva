class CourseAttendeesController < PublicationController
  defaults :resource_class => Course, :collection_name => 'courses', :instance_name => 'course',
           :resource_class_scope => :attendees,
           :user_role_class => :user_courses, :role_class => :roleincourse

  def course_params
    params.require(:course).permit(:name, :courseduration_id, :modality_id, :hoursxweek, :totalhours, :startyear, :startmonth,
     :endyear, :endmonth, :country_id, :location, user_courses_attributes: [:user_id, :roleincourse_id])
  end
end
