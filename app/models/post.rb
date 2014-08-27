class Post < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true, numericality: true
  validates :body, presence: true
  # validates :content, :presence => true

  def upcased_title
    title.upcase
  end
end
