# rakuna

Compose Interesting Systems from Simple Concepts

# Description
`rakuna` is made up of several very small gems, each of which adds a set of related classes and/or mixins to reduce boilerplate code.

# Goals
  * Be simple to use.
  * Be fast.
  * Be obvious to read.

# Conventions
  * Overridable methods, not instance variables.
  * Encourage intuitive composition with mixins.
  * Provide and fulfill reasonable Contracts.

# Sub-Projects
  * [`rakuna-core`](https://github.com/colstrom/rakuna-core) - The tiny heart of Rakuna.
  * [`rakuna-content-json`](https://github.com/colstrom/rakuna-content-json) - Parsing and generating JSON.
  * [`rakuna-validation-json`](https://github.com/colstrom/rakuna-validation-json) - Validating JSON objects against a schema.
  * [`rakuna-content-signature`](https://github.com/colstrom/rakuna-content-signature) - HMAC signatures with optional shared secrets.
  * [`rakuna-integration-github`](https://github.com/colstrom/rakuna-integration-github) - GitHub integration.
  * [`rakuna-authentication-github`](https://github.com/colstrom/rakuna-authentication-github) - GitHub authentication strategies.
  * [`rakuna-data-redis`](https://github.com/colstrom/rakuna-data-redis) - Container-friendly Redis support.
  * [`rakuna-session-redis`](https://github.com/colstrom/rakuna-session-redis) - Expiring session support to your Webmachine project, using Redis as a datastore.

# Installation
`gem install rakuna`

# Usage
`require 'rakuna'`

## Examples

### Hello World
```ruby

# Create a resource!
class ExampleResource < Rakuna::Resource::Basic
  include Rakuna::Provides::Text

  def output
    'Hello, World'
  end
end

# Send all routes to ExampleResource
Webmachine.application.routes do
  add [:*], ExampleResource
end

Webmachine.application.run
```

### Hello World, with GitHub authentication and Redis-backed session storage
```ruby

# Create a resource!
class ExampleResource < Rakuna::Resource::Basic
  include Rakuna::Provides::HTML
  include Rakuna::Authentication::GitHub::Organization
  include Rakuna::Session::Redis

  def whitelist
    ['my-github-organization']
  end

  def session_id
    username
  end

  def save_avatar
    session.set 'avatar', user.avatar_url
  end

  def output
    session.renew unless session.active?
    "<p>Hello, #{username}! Your avatar is: <img src=\"#{session.get 'avatar'}\" /></p>"
  end
end

# Send all routes to ExampleResource
Webmachine.application.routes do
  add [:*], ExampleResource
end

Webmachine.application.run
```

Contributing to rakuna
----------------------
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
