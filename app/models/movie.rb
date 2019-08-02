# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  year        :integer
#  duration    :integer
#  description :text
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#

class Movie < ApplicationRecord
  def Movie.last_decade
    array_of_movie_records = self.where("created_at > ?", 10.years.ago )
    return array_of_movie_records
  end

  def Movie.short
    array_of_movie_records = self.where({ :duration => 90 })
    return array_of_movie_records
  end

  def Movie.long
    array_of_movie_records = self.where({ :duration => 180 }).last
    return array_of_movie_records
  end

  def director
    director_record = Director.where({ :id => self.director_id })
    return director_record
  end

  def characters
    character_records = Character.where({ :movie_id => self.id }).at(0)
    return character_records
  end

  def cast
    character_records = Characters.where({ :movie_id => self.id })
    ids = character_records.pluck(:id)
    actor_records = Actor.where({ :id => ids })
  end
end
