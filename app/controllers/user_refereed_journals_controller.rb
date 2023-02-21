class UserRefereedJournalsController < UserResourcesController
    def user_refereed_journal_params
        params.require(:user_refereed_journal).permit(:journal_id, :refereed_criterium_id, :year, :month)
    end
end
