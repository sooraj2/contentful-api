# Test Project - Contentful API
This project is an MVC architecture based rails application which uses Contentful API.

### Features (APIs)
- Fetch all/specific recipes from master evironment
- Index/show for recipe resource.

## Project structure

| Name                          | Description                               |
| ------------------------------|------------------------------------------ |
| app/assets/                   | Application assets                        |
| app/controllers/              | Project controllers                       |
| app/views/                    | Frontend pages for application            |
| app/models/                   | Models/Wrapper classes for contentful     |


### DEPENDENCIES
- Ruby 3.1.3
- Rails 7.0.5

## PROJECT SETUP

### Install required dependencies
This project was built using Ruby on Rails, it has a variety of dependencies in the form of "ruby gems".
See ruby version in gemfile.

Once you have ruby installed, you will need the bundler gem. To install bundler, simply run:

```
gem install bundler
```

After bundler is installed, run the following command from the root directory of the application (you may need to install some dependencies):

```
bundle install
```

### Create a file named .env in root directory, and define the following environment variables

```
CONTENTFUL_SCOPE
CONTENTFUL_ACCESS_TOKEN
```

Amazing! Now all of those sweet packages we use to make this application work should be installed.

Hurray! the project is ready to run.


### To run the project, simply type

```
rails server
```
