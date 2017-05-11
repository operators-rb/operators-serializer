# Operators::Serializer

[![Code Climate](https://codeclimate.com/github/operators-rb/operators-serializer/badges/gpa.svg)](https://codeclimate.com/github/operators-rb/operators-serializer)
[![CircleCI](https://circleci.com/gh/operators-rb/operators-serializer.svg?style=shield&circle-token=9542c2160ff69e57c6e71e2cd2d8ebfb5ec2abb4)](https://circleci.com/gh/operators-rb/operators-serializer)

The simplest serialization ever.

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
    @user = UserSerializer.new(User.find_by(id: params[:id]))
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/operators-rb/operators-serializer.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

