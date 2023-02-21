class OtherActivitiesController < UserResourcesController
  defaults :resource_class => Activity, :collection_name => 'activities', :instance_name => 'activity',
           :resource_class_scope => :other

  def activity_params
    params.require(:activity).permit(:name, :descr, :year, :activitytype_id, :month)
  end
end