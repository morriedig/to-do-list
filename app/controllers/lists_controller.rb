class ListsController < ApplicationController
	before_action :set_list, :only => [:show, :edit, :update, :destroy]
	# http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
	
	def index
		@lists = List.all
	end

	def new
		@list = List.new
	end

	def create
		@list = List.new(list_params)
		if @list.save
			redirect_to lists_url
		else
			render :new
		end
	end


	def update
	  @list.update_attributes(list_params)

	  redirect_to list_path(@list)
	end

	def destroy
		if( Time.now.to_s >= @list.due_date.to_s)
			redirect_to lists_url
		else
		  @list.destroy
		  redirect_to lists_url
		end
	end

	private

	def list_params
		params.require(:list).permit(:title, :date,:due_date , :description, :detail, :file_location)
	end

	def set_list
		@list = List.find(params[:id])
	end

end
