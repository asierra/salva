class UserResearchLinesController < UserResourcesController
  defaults :resource_class => UserResearchline, :collection_name => 'researchlines', :instance_name => 'researchline'
  
  def researchline_params
    params.require(:researchline).permit(researchline_attributes: [:name, :name_en, :descr])
  end
end
