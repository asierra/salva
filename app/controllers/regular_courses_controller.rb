class RegularCoursesController < PublicationController
  defaults :resource_class => Regularcourse, :collection_name => 'regular_courses', :instance_name => 'regular_course',
           :user_role_class => :user_regularcourses, :role_class => :roleinregularcourse


  def regular_course_params
    params.require(:regular_course).permit(:title, :modality_id, :semester, :credits,
      user_regularcourses_attributes: [:user_id, :hoursxweek, :roleinregularcourse_id],
        academicprogram_attributes: [:academicprogramtype_id, :year, :career_id, :degree_id, :institution_id, :university_id, :country_id])
  end
end
