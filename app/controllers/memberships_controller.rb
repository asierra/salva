class MembershipsController < UserResourcesController
    def membership_params
        params.require(:membership).permit(:institution_id, :startyear, :endyear)
    end
end
