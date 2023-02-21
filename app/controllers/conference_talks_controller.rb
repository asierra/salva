class ConferenceTalksController < PublicationController
  defaults :resource_class => Conferencetalk, :collection_name => 'conference_talks', :instance_name => 'conference_talk',
           :user_role_class => :user_conferencetalks, :role_class => :roleinconferencetalk
  
  def conference_talk_params
    params.require(:conference_talk).permit(:authors, :title, :talktype_id, :talkacceptance_id, :modality_id,
    user_conferencetalks_attributes: [:user_id, :roleinconferencetalk_id],
    conference_attributes: [:name, :conferencetype_id, :conferencescope_id, :country_id, :year, :month, :location,
    conference_institutions_attributes: [:institution_id]])
  end
end
