# Text Truncation Helper

`text_truncation_helper` is a simple Ruby on Rails gem for truncating long text strings and appending a "Read More" link to the truncated content. This is especially useful in applications where you want to display a limited amount of text with an option to expand the content.

## Features

- Truncates long text and appends a "Read More" link.
- Safe for use in HTML rendering.
- Easy to use and customize.

## Installation

### 1. Add the Gem to Your Rails Application

In your Rails application's `Gemfile`, add the following line to include the gem from your local development directory:

```ruby
gem 'text_truncation_helper', path: '/path/to/your/gem/directory'
```

Replace `/path/to/your/gem/directory` with the actual path to your gem's location.

Then run:

```bash
bundle install
```

### 2. Add the Helper to Your Views

Once installed, include the `text_truncation_helper` gem in your views. This will give you access to the `truncate_text` helper method.

In your Rails views, you can call the helper method like this:

```erb
<%= truncate_text(@your_long_text, length: 100) %>
```

## Usage

### Example

```ruby
text = "This is a long text that needs to be truncated"
truncated = TextTruncationHelper.truncate_text(text, length: 10)

# Output:
# "This is a ... <a href='#' class='read-more-btn'>Read More</a>"
```

You can customize the length by passing a `length` option. If the text is shorter than the specified length, the full text will be displayed.

## Development

### Running Tests

To run the RSpec tests for the gem, navigate to the root directory of the gem and run:

```bash
rspec spec/
```

This will execute the tests and ensure everything is functioning as expected.

### Building the Gem

If you want to build the gem manually, run the following command in the gem's root directory:

```bash
gem build text_truncation_helper.gemspec
```

### Installation in Another Rails App

If you want to install this gem in another Rails app, you can add it to your `Gemfile` and provide the path where the gem is located:

```ruby
gem 'text_truncation_helper', path: '/path/to/your/gem'
```

Then run:

```bash
bundle install
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/bhavesh/text_truncation_helper](https://github.com/bhaveshrordev/text_truncation_helper).

1. Fork it (https://github.com/bhaveshrordev/text_truncation_helper/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

This gem is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Contact

For any questions or issues, feel free to reach out via the [Issues](https://github.com/bhaveshrordev/text_truncation_helper/issues) page on GitHub.