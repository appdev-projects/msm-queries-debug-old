# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  dob        :date
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Director < ApplicationRecord
   def Director.eldest
     ordered_array_of_directors = self.order({ :dob => :asc})
     return ordered_array_of_directors
   end
  
   def Director.youngest
     ordered_array_of_directors = self.order({ :dob => :desc })
     return ordered_array_of_directors.last
   end
  
  def filmography
    array_of_movie_records = Movie.where({ :id => :director_id })
  end
  
end
