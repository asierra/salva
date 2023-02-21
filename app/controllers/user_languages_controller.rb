class UserLanguagesController < UserResourcesController
    def user_language_params
        params.require(:user_language).permit(:language_id, :institution_id, :spoken_languagelevel_id, :written_languagelevel_id)
    end
end