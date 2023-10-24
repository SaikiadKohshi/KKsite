class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 

         has_many :kksites, dependent: :destroy

         has_many :likes, dependent: :destroy
         has_many :liked_kksites, through: :likes, source: :kksite
         has_many :comments, dependent: :destroy

  def already_liked?(kksite)
    self.likes.exists?(kksite_id: kksite.id)
  end
end
