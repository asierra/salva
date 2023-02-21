class UserStimuliController < UserResourcesController
    def user_stimulus_params
        params.require(:user_stimulus).permit(:stimuluslevel_id, :startyear, :startmonth, :endyear, :endmonth)
    end
end
