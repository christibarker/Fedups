class BoatJob < ApplicationRecord
	belongs_to :jobs
  belongs_to :user
  belongs_to :boats
end
