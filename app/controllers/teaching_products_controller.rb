class TeachingProductsController < PublicationController
  defaults :resource_class => Genericwork, :collection_name => 'genericworks', :instance_name => 'genericwork',
           :resource_class_scope => :teaching_products,
           :user_role_class => :user_genericworks, :role_class => :userrole

  def genericwork_params
    params.require(:genericwork).permit(:authors, :title, :genericworktype_id, :institution_id, :year, :month,
      :genericworkstatus_id, user_genericworks_attributes: [:userrole_id])
  end
end
