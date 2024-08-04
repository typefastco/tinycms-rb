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

# get blog via blog_id or slug
Tinycms::Blogs::Api.get(<blog_id>)
# or
Tinycms::Blogs::Api.api.get(<slug>)
```

The blogs api will return instance(s) of blog(s) with a list of posts. You can use the post ids that you get in this endpoint to make requests to the posts endpoint.

### Posts
```ruby
# get post via post_id or slug
Tinycms::Posts::Api.get(<post_id>)
Tinycms::Posts::Api.get(<slug>)
```

The posts api will return an instance of a post with the author information.

### Rendering Blogs and Posts

Add to your routes file `config/routes.rb` the following routes. Customize the routes to your needs/preferences.

```ruby
Rails.application.routes.draw do
  get "blogs", to: "blogs#index"
  get "blogs/:id", to: "blogs#show"

  get "posts/:id", to: "posts#show"

  # OR...
  resources :blogs, only: [:index, :show]
  resources :posts, only: :show
end
```

Rendering blogs and posts

```ruby
class BlogsController < ApplicationController
  def index
    @blogs = Tinycms::Blogs::Api.get_all
  end

  def show
    @blog = Tinycms::Blogs::Api.get(params[:id])
  end
end
```

```html
# index.html.erb
# link via via blog id
<ul>
  <% @blogs.each do |blog| %>
    <li><%= link_to blog.name, blog_path(id: blog.id) %></li>
  <% end %>
</ul>

# link via via blog slug
<ul>
  <% @blogs.each do |blog| %>
    <li><%= link_to blog.name, blog_path(id: blog.slug) %></li>
  <% end %>
</ul>

# show.html.erb
# link via post id
<ul>
  <% @blog.posts.each do |post| %>
    <li><%= link_to post.title, post_path(id: post.id) %></li>
  <% end %>
</ul>

# link via post slug
<ul>
  <% @blog.posts.each do |post| %>
    <li><%= link_to post.title, post_path(id: post.slug) %></li>
  <% end %>
</ul>
```

Rendering a post

```ruby
class PostsController < ApplicationController
  def show
    @post = Tinycms::Posts::Api.get(params[:id])
  end
end
```

```html
<%= @post.content.html_safe %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/typefastco/tinycms. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/typefastco/tinycms/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Tinycms project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tinycms/blob/master/CODE_OF_CONDUCT.md).
