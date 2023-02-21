class ReviewsController < UserResourcesController
    def review_params
        params.require(:review).permit(:authors, :title, :reviewed_work_title, :reviewed_work_publication,
         :published_on, :year, :month, :other)
    end
end