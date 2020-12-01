# Fitments

Fitments provides a number of classes that help with generating development and test data.

For example, you can define a `Person` class that autocompletes personal data.

```ruby
class Person
  include Fitments::Fixture

  emits :name, :email, :created_at

  def created_at
    read_attribute(:created_at) || Time.now
  end
end
```

```yaml
brenda: !ruby/object:Person
  email: brenda@example.com
```

## Development

When you want to make changes to Fitments start by installing all dependencies.

    bundle install

Then make sure all tests run for you before you start making changes.

    bundle exec rake
