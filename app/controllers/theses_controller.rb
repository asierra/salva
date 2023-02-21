class ThesesController < PublicationController
  defaults :resource_class => Thesis, :collection_name => 'theses', :instance_name => 'thesis',
           :user_role_class => :user_theses, :role_class => :roleintheses

  def update
    set_user_in_role_class!
    resource.modified_by_id = current_user.id
    update!
  end

  def thesis_params
    params.require(:thesis).permit(:title, :authors, :start_date, :thesisstatus_id, :end_date, :career_id, :degree_id,
     :thesismodality_id, :institution_id, :university_id, :country_id, 
      user_theses_attributes: [:user_id, :roleinthesis_id])
  end
end
