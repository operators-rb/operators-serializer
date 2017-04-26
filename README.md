# Operators::Serializer


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'operators-serializer'
```

## Usage

```ruby
class UserSerializer < Operators::Serializer
  def as_json
    {
      id: id,
      name: name,
      email: email
    }
  end
end
```

**Usage in Rails controllers**
```ruby
class UsersController < ApplicationController

  def index
    @users = UserSerializer.serialize_collection(User.all)
  end

  def show
    @user = UserSerializer.new(User.find_by(id: params[:id])).as_json
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/operators-rb/operators-serializer.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

