class ProjectsController < PublicationController
  defaults :user_role_class => :user_projects, :role_class => :roleinproject

  def project_params
    params.require(:project).permit(:name, :abbrev, :responsible, :descr, :projecttype_id,
    :startyear, :startmonth, :endyear, :endmonth, :projectstatus_id,
    projectfinancingsources_attributes: [:institution_id],
    user_projects_attributes: [:roleinproject_id])
  end
end