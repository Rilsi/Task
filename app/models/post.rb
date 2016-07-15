class Post < ActiveRecord::Base
	
	
    acts_as_votable
	 

	validates :user_id, presence: true 
	belongs_to :user
	has_many :comments, dependent: :destroy 
	has_attached_file :image, styles: { :medium => "440x" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


    geocoded_by :address   # can also be an IP address
    after_validation :geocode          # auto-fetch coordinates
    

end
