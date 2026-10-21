# Word Opposites API - PHP Package

Word Opposites looks up direct antonyms for any single input term. Pass an English word to receive an array of contrasting and opposing words.

## Installation

Install via Composer:

```bash
composer require apiverve/wordopposite
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Wordopposite\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['word' => 'hot']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Wordopposite\Client;
use APIVerve\Wordopposite\Exceptions\APIException;
use APIVerve\Wordopposite\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'hot']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/wordopposite?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/wordopposite?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/wordopposite?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
