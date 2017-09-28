class List < ApplicationRecord
	mount_uploader :file_location, ListImageUploader
	validates_presence_of :title, :due_date, :description
end
