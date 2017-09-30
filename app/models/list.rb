class List < ApplicationRecord
	has_many :tracks, dependent: :destroy
	mount_uploader :file_location, ListImageUploader
	validates_presence_of :title, :due_date, :description
end
