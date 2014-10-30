class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, length: {minimum: 5}

end
