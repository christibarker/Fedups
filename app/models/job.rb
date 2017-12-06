class Job < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	
	validates :name, :uniqueness => true
	validates_inclusion_of :orgin, in: ['USA', 'Russia', 'China', 'Thialand']
	validates_inclusion_of :destination, in: ['USA', 'Russia', 'China', 'Thialand']
	validates_numericality_of :cost, :greater_than => 1000
	validates_length_of :description, :minimum => 50
	
  belongs_to :user
  has_many :boat_jobs
 	has_many :boats, through: :boat_jobs, dependent: :destroy
  def local_boats()
  		jobs = Job.where(origin: location).where(current_user: user_id)

  end
 
end


# Cost must be above $1000 for each job

