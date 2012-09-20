# Effes

Effes is the Hebrew word for 'null'.

The gem is used to define null objects for your relations.

## Installation

Add this line to your application's Gemfile:

    gem 'effes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install effes

## Usage

Say you have the classic blog application (because the rails community didn't come up with a simpler thing).

Now, every post has a user.

```ruby
class Post
  belongs_to :user
end
```

And let's say you have this view

```ruby
<ul>
  <% @posts.each do |post| %>
    <li>Post Title: <%= post.title %>, by: <%= post.user.first_name %>
    </li>
  <% end %>
</ul>
```

Say for some reason that a certain post user will does not exist in the database, this code will fail.

### Comes EFFES

```ruby
class Post
  belongs_to :user
  
  has_nil_class :user, with: NilUser
end

class NilUser
  def first_name
    "UNKNOWN"
  end
end
```

This will load the `NilUser` class every time you have a nil user in the relation.

You don't have to supply the `with` option, it will assume it's `Nil{class_name}` by default, you can customize it with the `with` option.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
