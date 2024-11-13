# api-helper

**api-helper** is a lightweight PHP package designed to simplify HTTP requests to APIs using cURL. It helps make GET, POST, PUT, and DELETE requests while managing headers and handling errors.

## Features
- Supports GET, POST, PUT, DELETE requests
- Customizable default headers for easier API integration
- Error handling with detailed messages
- Debug mode for logging API request and response details

## Installation
You can install the package via Composer by running the following command:

```bash
composer require mohsen-najafizadeh/api-helper
```

## Example Usage

Here is an example of how to use the `ApiHelper` class:

```php
$apiHelper = new ApiHelper('https://api.example.com', [], true);
$response = $apiHelper->get('/resource');
```

## License
[MIT](LICENSE)
