You can enter some rows into tables using the [ActiveRecord methods that you learned](https://chapters.firstdraft.com/chapters/770):

```ruby
d = Director.new
d.name = "Anthony Russo"
d.dob = "February 3, 1970"
d.save
```

You can check out your newly saved director:

```ruby
Director.last
```

Assuming the new director's ID number is `42`, we can add a new movie:

```ruby
m = Movie.new
m.title = "Avengers: Infinity War"
m.year = 2018
m.duration = 149
m.director_id = 42
m.save
```

Add a couple more directors and movies to get some practice instantiating objects, assigning values to their attributes, and saving  them.