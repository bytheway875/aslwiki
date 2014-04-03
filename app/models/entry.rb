class Entry < ActiveRecord::Base

  belongs_to :user
  has_many :signs
  accepts_nested_attributes_for :signs
end