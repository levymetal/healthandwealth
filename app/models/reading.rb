class Reading < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user

  default_scope { order('date DESC') }

  scope :recent, -> { where('created_at > ?', 1.week.ago) }
end
