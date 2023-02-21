class PopularScienceWorksController < PublicationController
  defaults :resource_class => Genericwork, :collection_name => 'genericworks', :instance_name => 'genericwork',
           :resource_class_scope => :popular_science,
           :user_role_class => :user_genericworks, :role_class => :userrole

  def genericwork_params
    params.require(:genericwork).permit(:authors, :title, :publisher_id, :year, :month, :genericworktype_id, :genericworkstatus_id,
    :reference, :vol, :pages, :isbn_isnn, :institution_id,
    user_genericworks_attributes: [:userrole_id])
  end
end
