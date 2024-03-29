class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    
end
