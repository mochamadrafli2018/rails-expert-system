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

- Generate controller, route and view

```rails generate controller <controller_name> index```

- Generate model and migration

```rails g model <model_name> <column_name>:string <column_name>:string```

Example

```rails g model user name:string password:string email:string```

- Migration

```rails db:migrate```

- Add new column to existing table in database with existing model

```rails g migration <model_name>```

Then check ```db/migrate```, there must be new file. We can add copy of code below to those file inside ```def change``` method.

```add_column :users, :image_name, :string```

Then

```rails db:mgrate```

- Delete Migration

```rails d migration table_name```

- Rails console

```rails console```

- Add new data to database through console

```rails console```

```user = <model_name>.new(name: "My name")```

```user.save```

- Getting first value from database through console

```rails console```

```user=<model_name>.first```

```user.name```

or it can be simplyfy as

```<model_name>.all[0].name```

- Getting the data by id through console

```rails console```

```user=<model_name>.find_by(id:<number>)```

```user.name```
