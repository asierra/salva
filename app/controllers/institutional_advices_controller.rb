class InstitutionalAdvicesController < UserResourcesController
  defaults :resource_class => Instadvice, :collection_name => 'advices', :instance_name => 'advice'

  def advice_params
    params.require(:advice).permit(:title, :instadvicetarget_id, :institution_id, :year, :month)
  end
end
