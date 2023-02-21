class UserCreditsController < UserResourcesController
    def user_credit_params
        params.require(:user_credit).permit(:credittype_id, :descr, :year, :month, :other)
    end
end