class TutorialCommitteesController < UserResourcesController
    def tutorial_committee_params
        params.require(:tutorial_committee).permit(:studentname, :descr, :year, :career_id, :degree_id, :institution_id, :university_id, :country_id)
    end
end