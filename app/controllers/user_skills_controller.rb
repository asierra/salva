class UserSkillsController < UserResourcesController
    def user_skill_params
        params.require(:user_skill).permit(:skilltype_id, :descr, :descr_en)
    end
end