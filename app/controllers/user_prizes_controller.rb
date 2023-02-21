class UserPrizesController < UserResourcesController
    def user_prize_params
        params.require(:user_prize).permit(:year, :month,
         prize_attributes: [:prizetype_id, :name, :institution_id])
    end
end
