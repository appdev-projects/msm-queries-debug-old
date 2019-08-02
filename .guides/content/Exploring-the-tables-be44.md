Open a Terminal tab, launch a `rails console` session, and then try the following:

```ruby
Director.count
Movie.count
Character.count
Actor.count
```

You'll see that I have already created these 4 tables; they exist, but right now there are no rows in any of them. You can see what columns are in each table by:

 - Typing just the class name into `rails console`, e.g.

    ```
    [2] pry(main)> Character
    => Character(id: integer, movie_id: integer, actor_id: integer, name: string, created_at: datetime, updated_at: datetime)
    ```
 - Looking at the comments at the top of the model file, e.g. `app/models/movie.rb`. (These comments are auto-generated and kept up to date by the excellent [annotate gem](https://github.com/ctran/annotate_models).)