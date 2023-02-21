class InstitutionalActivitiesController < UserResourcesController
    def institutional_activity_params
        params.require(:institutional_activity).permit(:descr, :institution_id, :startyear, :startmonth, :endyear, :endmonth)
    end
end