class Event < ActiveRecord::Base
  attr_accessible :date, :name, :venue_id, :description
  belongs_to :venue
end
