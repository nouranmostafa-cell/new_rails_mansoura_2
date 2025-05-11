class Post < ApplicationRecord
  belongs_to :user, foreign_key: :creator_id

  has_many :post_editors
  has_many :editors, through: :post_editors, source: :editor
end
