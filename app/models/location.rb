class Location < ActiveRecord::Base
  attr_accessible :business_id, :city, :neighborhood, :phone, :postal_code, :state, :street, :street2

  validates :street,       presence: true, length: {maximum: 100}
  validates :street2,                      length: {maximum: 100}
  validates :city,         presence: true, length: {maximum: 50}
  validates :state,        presence: true, length: {maximum: 2}
  validates :postal_code,  presence: true, length: {maximum: 10}
  validates :phone,                        length: {maximum: 15}
  validates :neighborhood, presence: true, length: {maximum: 100}

  belongs_to :business

  has_paper_trail
end
