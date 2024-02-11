# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
    # Define a method to retrieve the movie associated with this instance
  def movie
    # Extract the movie ID associated with this instance
    my_movie_id = self.movie_id
    
    # Query the Movie table to find a movie record with a matching ID
    matching_movies = Movie.where({ :id => my_movie_id })
    
    # Retrieve the first movie record from the matching result set
    the_movie = matching_movies.at(0)
    
    # Return the retrieved movie record
    return the_movie
  end

  # Define a method to retrieve the actor associated with this instance
  def actor
    # Extract the actor ID associated with this instance
    my_actor_id = self.actor_id
    
    # Query the Actor table to find an actor record with a matching ID
    matching_actors = Actor.where({ :id => my_actor_id })
    
    # Retrieve the first actor record from the matching result set
    the_actor = matching_actors.at(0)
    
    # Return the retrieved actor record
    return the_actor
  end

end
