class UserSchoolarshipsController < UserResourcesController
    def user_schoolarship_params
        params.require(:user_schoolarship).permit(:scholarship_id, :descr, :start_date, :end_date, :amount)
    end
end