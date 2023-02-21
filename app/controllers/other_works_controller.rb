class OtherWorksController < PublicationController
  defaults :resource_class => Genericwork, :collection_name => 'genericworks', :instance_name => 'genericwork',
           :resource_class_scope => :other_works,
           :user_role_class => :user_genericworks, :role_class => :userrole

  def genericwork_params
    params.require(:genericwork).permit(:authors, :title, :year, :month, :genericworktype_id, :genericworkstatus_id, :institution_id,
      user_genericworks_attributes: [:userrole_id])
  end
end
