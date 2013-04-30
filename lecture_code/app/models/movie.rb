class Movie < ActiveRecord::Base
  attr_accessible :year, :title

  validates_presence_of :title

  has_many :characters
  has_many :actors, :through => :characters

  # def characters
  #   Character.where(:movie_id => self.id)
  # end
end
