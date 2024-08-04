# Tinycms

This gem is used to integrate your Rails app with the Tinycms headless CMS. Add the gem to your Rails app, set the api_key in the initializer, and you're ready to go.

## Installation

This gem is meant to be used with Rails apps.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add tinycms

Create an initializer in `config/initializers/tinycms.rb`. And configure the initializer as:

```ruby
Tinycms.configure do |config|
  config.api_key = `YOUR-API-KEY`
end
```

To get the api key, sign up for [TinyCMS](https://www.tinycms.app) and grab the api key in the settings page.

## Usage

The gem is simple, meant to pull down blogs and posts.

### Blogs
```ruby
# get all blogs
Tinycms::Blogs::Api.get_all

# get blog via blog_id
Tinycms::Blogs.api.get(<blog_id>)
```

The blogs api will return instance(s) of blog(s) with a list of posts. You can use the post ids that you get in this endpoint to make requests to the posts endpoint.

### Posts
```ruby
# get post via post_id
Tinycms::Posts.get(<post_id>)
```

The posts api will return an instance of a post with the author information.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/typefastco/tinycms. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/typefastco/tinycms/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Tinycms project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tinycms/blob/master/CODE_OF_CONDUCT.md).
