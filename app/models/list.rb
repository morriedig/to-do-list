class List < ApplicationRecord
	validates_presence_of :title, :date, :due_date, :description
end
