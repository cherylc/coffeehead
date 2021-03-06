class Business < ActiveRecord::Base
  attr_accessible :name, :website

  validates :name,    presence: true, length: {maximum: 150}
  validates :website,                 length: {maximum: 250}

  has_many :roasts
  has_many :locations

  has_paper_trail
end
