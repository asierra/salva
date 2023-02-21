class UserJournalsController < UserResourcesController
    def user_journal_params
        params.require(:user_journal).permit(:journal_id, :roleinjournal_id, :startyear, :startmonth, :endyear, :endmonth)
    end
end