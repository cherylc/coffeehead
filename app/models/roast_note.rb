class RoastNote < ActiveRecord::Base
  attr_accessible :content, :roast_id, :user_id, :roasted_at

  validates :user_id,  presence: true
  validates :roast_id, presence: true
  validates :content,  presence: true

  belongs_to :roast
  belongs_to :user

  has_paper_trail
end
