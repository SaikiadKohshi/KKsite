class Like < ApplicationRecord
  belongs_to :kksite
  belongs_to :user

  validates_uniqueness_of :kksite_id, scope: :user_id
end
