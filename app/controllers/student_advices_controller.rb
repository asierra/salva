class StudentAdvicesController < UserResourcesController
  defaults :resource_class => Indivadvice, :collection_name => 'advices', :instance_name => 'advice',
           :resource_class_scope => :students

  def advice_params
    params.require(:advice).permit(:indivname, :indivadvicetarget_id, :hours, :startyear, :startmonth,
     :endyear, :endmonth, :career_id, :degree_id, :institution_id, :university_id, :country_id)
  end
end
