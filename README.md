

Steps required to run the application:

### Ruby version
* 2.5.1

### STEPS

1. run `bundle install`
2. run `bundle exec rake db:create`
3. specify db credentials in databse.yml
4. run `bundle exec rake db:migrate`
5. run `bundle exec rails s`
6. run `bundle exec rspec` to run the test suite.