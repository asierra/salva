class UnrefereedInproceedingsController < PublicationController
  defaults :resource_class => Inproceeding, :collection_name => 'inproceedings', :instance_name => 'inproceeding',
           :resource_class_scope => :unrefereed,
           :user_role_class => :user_inproceedings

  def create
    super
    resource.proceeding.update(isrefereed: false)
  end


  def update
    resource.proceeding.isrefereed = false
    super
  end

  def inproceeding_params
    params.require(:inproceeding).permit(:authors, :title, :pages,
     proceeding_attributes: [:title, :year, :volume, :publisher_id,
      conference_attributes: [:name, :conferencetype_id, :conferencescope_id, :country_id, :year, :month, :location,
      conference_institutions_attributes: [:institution_id]]],
     user_inproceedings_attributes: [:user_id, :ismainauthor])
  end
end