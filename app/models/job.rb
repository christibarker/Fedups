class Job < ApplicationRecord
	has_and_belongs_to_many :boats
  belongs_to :user
  # has_many :boats, through :boat_jobs
  # has_many :boat_jobs
end
