class VideosController < UserResourcesController
    def video_params
        params.require(:video).permit(:name, :url, :start_year, :start_month)
    end
end