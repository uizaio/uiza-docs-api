## Deploy Local

```ruby
install gem > 2.3.1
bundle install
DOC_ENV=local bundle exec middleman server
```

```ruby
bundle install
DOC_ENV=['developement','production'] bundle exec middleman build --clean
point domain to build/index.html
```
