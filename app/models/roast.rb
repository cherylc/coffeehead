class Roast < ActiveRecord::Base
  attr_accessible :purchase_url, :blend_type, :business_id, :name

  validates :business_id,  presence: true
  validates :name,         presence: true, length: {maximum: 150}
  validates :blend_type,   presence: true, length: {maximum: 50}
  validates :purchase_url,                 length: {maximum: 255}

  belongs_to :business
  has_many :notes, class_name: 'RoastNote'

  accepts_nested_attributes_for :notes, :reject_if => :all_blank, :allow_destroy => true

  has_paper_trail
end
