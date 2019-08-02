Define the following methods. When you think you've got them working, you can run `rails grade` at a command prompt to check your work.

### Class methods to define

The following are [class-level methods](https://chapters.firstdraft.com/chapters/769#defining-class-methods) to define.

 - `Director.youngest` should return the youngest director on the list. Start by defining a class method with that name:

    ```ruby
    class Director < ApplicationRecord
      def Director.youngest
        return "hello world"
      end
    end
    ```

    And then try calling that method in `rails console` with `Director.youngest` (don't forget to `reload!`). Once you've established that you've defined the method correctly, work on enhancing the method to return what we're actually looking for. _Work in small steps._
 - `Director.eldest` should return the eldest director on the list. Watch out for `nil` values in the `dob` column — `nil` is considered to be "less than" anything else, when ordered.

    You can [use `.not` to filter out](https://chapters.firstdraft.com/chapters/770#wherenotthis) those rows first.
 - `Movie.last_decade` should return all of the rows in the movies table where the year is within the last 10 years.
 - `Movie.short` should return all of the rows in the movies table where the duration is less than 90 minutes.
 - `Movie.long` should return all of the rows in the movies table where the duration is greater than 180 minutes.

### Instance methods to define

The following are [instance-level methods](https://chapters.firstdraft.com/chapters/769#defining-instance-methods) to define.

 - Given any director, let's call it `d`, `d.filmography` should return the rows in the movies table that belong to the director.

    Remember, our models are accessible from anywhere in the Rails application — `lib/tasks`, `rails console`, and _even from within other models_. So, we can reference `Movie` from inside `Director`:

    ```ruby
    class Director < ApplicationRecord
      def filmography
        return Movie.where({ :director_id => self.id })
      end
    end
    ```
 - Given any movie, let's call it `m`,
    - `m.director` should return the **row** in the directors table whose ID matches the movie's `director_id`. Note that the method shouldn't just return the _name_ of the director; we want the whole row, so that we can use the other details if we want them (like date of birth or bio).
    - `m.characters` should return a collection of the characters that were in the movie.
 - Given any actor, let's call it `a`, `a.characters` should return a collection of the characters that were played by the actor.

### Stretch goals

 - Given any movie, let's call it `m`, `m.cast` should return a collection of `Actor`s (_not_ `Character`s) that appeared in that movie. Hint: [`.pluck`](https://chapters.firstdraft.com/chapters/770#pluck).
 - Given any actor, let's call it `a`, `a.filmography` should return a collection of `Movie`s that the actor appeared in.