# Word Opposites API - Ruby Gem

Word Opposites looks up direct antonyms for any single input term. Pass an English word to receive an array of contrasting and opposing words.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_wordopposite'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_wordopposite
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_wordopposite'

# Initialize the client
client = APIVerve::Wordopposite::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ word: "hot" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ word: "hot" })
  puts response["data"]
rescue APIVerve::Wordopposite::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Wordopposite::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Wordopposite::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "hot",
    "opposites": [
      "cold",
      "cool",
      "chilly",
      "frozen",
      "frigid"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/wordopposite?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/wordopposite?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/wordopposite?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
