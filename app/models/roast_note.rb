class RoastNote < ActiveRecord::Base
  attr_accessible :content, :roast_id, :user_id

  validates :user_id,  presence: true
  validates :roast_id, presence: true
  validates :content,  presence: true

  after_initialize do |roast_note|
    roast_note.user_id = 0
  end

  belongs_to :roast
end
