class EducationsController < UserResourcesController
    def education_params
        params.require(:education).permit(:career_id, :degree_id, :institution_id, :university_id, :country_id,
        :startyear, :endyear, :is_studying_this, :is_titleholder)
    end
end
