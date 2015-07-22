# ModelSearcher

Search ActiveRecord Model name from the table name

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'model_searcher'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install model_searcher

## Usage

Ruby Application

```ruby
require 'model_searcher'
ModelSearcher.file_path("active_record_model_path")

ModelSearcher.find(:users)
=> User (call 'User.connection' to establish a connection)
```

Rails Application

```ruby
ModelSearcher.find(:users)
=> User (call 'User.connection' to establish a connection)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shiro16/model_searcher. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

