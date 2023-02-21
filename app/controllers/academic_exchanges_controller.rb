class AcademicExchangesController < UserResourcesController
  defaults :resource_class => Acadvisit, :collection_name => 'academic_exchanges', :instance_name => 'academic_exchange'

  def academic_exchange_params
    params.require(:academic_exchange).permit(:country_id, :institution_id, :descr, :acdvisittype_id, :startyear,
     :startmonth, :endyear, :endmonth, :place, :goals, :other)
  end
end