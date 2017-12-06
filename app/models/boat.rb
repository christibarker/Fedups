class Boat < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  validates :name, :uniqueness => true
  validates_inclusion_of :location, in: ['USA', 'Russia', 'China', 'Thialand']

  belongs_to :user
 	has_many :boat_jobs
 	has_many :jobs, through: :boat_jobs, dependent: :destroy


 	  def local_jobs()
  		jobs = Job.where(origin: location).where(current_user: user_id)

  end

end
