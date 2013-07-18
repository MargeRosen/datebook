class Gig < ActiveRecord::Base
  validates :event, :presence => true
  # attr_accessible :event, :description, :location, :date
  scope :past,   where("date < ?", Date.today).order("date")
  scope :future, where("date >= ?", Date.today).order("date")
end
