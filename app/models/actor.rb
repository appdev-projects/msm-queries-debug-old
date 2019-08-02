# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  dob        :date
#  name       :string
#  bio        :text
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Actor < ApplicationRecord
  def filmography
    array_of_movie_ids = Character.where({ :actor_id => self.movie_id }).pluck(:movie_id)
    array_of_movie_records = Movie.where({ :id => movie_array })
    return array_of_movie_records
  end
end
