# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Rails documentation

1. Generate controller, route and view

```rails generate controller login index```

2. Generate model

```rails g model <model_name> content:text```

3. Database migration

```rails db:migrate```

4. Rails console

```rails console```

5. Add new data to database through console

```rails console```

```user = <model_name>.new(name: "My name")```

```user.save```

Then check database

6. Getting first value from database through console

```rails console```

```user=<model_name>.first```

```user.name```

or it can be simplyfy as

```<model_name>.all[0].name```

7. Getting the data by id through console

```rails console```

```user=<model_name>.find_by(id:<number>)```

```user.name```