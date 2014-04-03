class Sign < ActiveRecord::Base

  belongs_to :user
  belongs_to :entry
  has_many :votes, through: :votes, source: :user
  has_many :comments
end