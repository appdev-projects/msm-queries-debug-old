We could enter a bunch of movies — perhaps even [the entire IMDB Top 250](https://www.imdb.com/chart/top) — manually in `rails console` this way; adding directors and actors first, then adding movies, and finally adding characters to join movies and actors.

Go ahead and add the IMDB Top 250 by hand with `.new`, `.save`, etc..... just kidding! That would take forever. In the real world, _someone_ would initially have to add all of our data, whether it's us, or our employees, or our users (through forms in their browser, obviously, not through `rails console`).

But, to make life easy for developers working on this app, I've included a program that will populate your tables for you quickly. I named the program `dev:prime`, and you can run it from the command prompt with `rails dev:prime`, or click the "🚀 Hydrate with dummy data" button in the menu.

We'll talk more about how to write these programs in a later lesson, but they are just Ruby scripts like the ones you've written before. In this case, the Ruby script automates what you've been doing in `rails console` — using `Director`, `Movie`, `Character`, and `Actor` to CRUD records.

When you run `rails dev:prime`, you should see output like this:

```bash
There are 34 directors in the database
There are 50 movies in the database
There are 652 actors in the database
There are 722 characters in the database
```

You can verify this yourself by `.count`ing each table in `rails console`.