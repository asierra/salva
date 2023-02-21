class TechnicalReportsController < PublicationController
  defaults :resource_class => Genericwork, :collection_name => 'genericworks', :instance_name => 'genericwork',
           :resource_class_scope => :technical_reports,
           :user_role_class => :user_genericworks, :role_class => :userrole

  def genericwork_params
    params.require(:genericwork).permit(:authors, :title, :reference, :vol, :pages, :isbn_isnn, :year, :month,
     :genericworkstatus_id, :genericworktype_id, user_genericworks_attributes: [:userrole_id])
  end
end