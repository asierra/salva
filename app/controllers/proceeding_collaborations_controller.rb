class ProceedingCollaborationsController < PublicationController
   defaults :resource_class => Proceeding,
            :collection_name => 'proceedings',
            :instance_name => 'proceeding',
            :user_role_class => :user_proceedings,
            :role_class => :roleproceeding

   def proceeding_params
      params.require(:proceeding).permit(:title, :year, :volume, :publisher_id,
      conference_attributes: [:name, :conferencetype_id, :conferencescope_id, :country_id, :year, :month, :location,
      conference_institutions_attributes: [:institution_id]],
      user_proceedings_attributes: [:user_id, :roleproceeding_id])
   end
end