class ConferenceAttendeesController < PublicationController
  defaults :resource_class => Conference, :collection_name => 'conferences', :instance_name => 'conference',
           :resource_class_scope => :attendees,
           :user_role_class => :userconferences, :role_class => :roleinconference

  def conference_params
    params.require(:conference).permit(:name, :conferencetype_id, :conferencescope_id, :country_id, :year, :month, :location,
    conference_institutions_attributes: [:institution_id],
    userconferences_attributes: [:user_id, :roleinconference_id])
  end
end
