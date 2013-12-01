class Roast < ActiveRecord::Base
  attr_accessible :blend_type, :business_id, :name

  validates :business_id, presence: true
  validates :name,        presence: true, length: {maximum: 150}
  validates :blend_type,  presence: true, length: {maximum: 50}

  belongs_to :business
  has_many :notes, class_name: "RoastNote"

  accepts_nested_attributes_for :notes, :reject_if => :all_blank, :allow_destroy => true
end
