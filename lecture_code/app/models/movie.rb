class Movie < ActiveRecord::Base
  attr_accessible :year, :title

  validates_presence_of :title

end
