class Project < ApplicationRecord
  belongs_to :UserProjectWishlist
  belongs_to :User
  belongs_to :Category
  has_many :Promise

  validate :category, presence: true
  validate :CategoryExist
  validate :publisher, presence: true, numericality: true
  validate :title, presence: true
  validate :description, presence: true
  validate :goal, presence: true
  validate :finishdate, presence: true
  validate :mainvideo, allow_blank: true
  validate :mainpicture, allow_blank: true


  def CategoryExist
    ev= Category.find(category)
    return ev
  end

end
