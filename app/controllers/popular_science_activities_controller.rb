class PopularScienceActivitiesController < UserResourcesController
  defaults :resource_class => Activity, :collection_name => 'activities', :instance_name => 'activity',
           :resource_class_scope => :popular_science

  def activity_params
    params.require(:activity).permit(:name, :descr, :activitytype_id, :year, :month)
  end
end