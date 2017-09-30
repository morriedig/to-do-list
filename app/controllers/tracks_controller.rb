class TracksController < ApplicationController
	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
	
	def create
		@list = List.find(params[:list_id])
		@track = @list.tracks.create(track_params)
		redirect_to list_path(@list)
	end

	def destroy
		@list = List.find(params[:list_id])
		@track = @list.tracks.find(params[:id])
		@track.destroy
		redirect_to list_path(@list)
	end

	private
	def track_params
		params.require(:track).permit(:commenter, :date, :body)
	end
end
