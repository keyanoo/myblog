class Blog < ActiveRecord::Base
  validates_length_of :title, :in => 3..25
  validates_length_of :description, :in => 10..1024
end
