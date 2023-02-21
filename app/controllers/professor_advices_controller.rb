class ProfessorAdvicesController < UserResourcesController
  defaults :resource_class => Indivadvice, :collection_name => 'advices', :instance_name => 'advice',
           :resource_class_scope => :professors

  def advice_params
    params.require(:advice).permit(:indivname, :institution_id, :startyear, :startmonth, :endyear, :endmonth, :hours, :indivadvicetarget_id)
  end
end
