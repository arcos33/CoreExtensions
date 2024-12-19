# CoreExtensions

A lightweight Swift framework providing commonly used extensions for Foundation types, simplifying everyday iOS development tasks.

## Features

-  **String Extensions**
  - Email validation
  - String formatting
  - URL encoding
  - Case modifications
  - Whitespace handling

```swift
// Email validation
let email = "user@example.com"
email.isValidEmail // true

// String formatting
let text = "  Hello World  "
text.trimmed // "Hello World"
```

## Requirements

-  iOS 13.0+
-  Swift 5.0+
-  Xcode 14.0+

## Installation

### Swift Package Manager

1. In Xcode, select `File` → `Add Packages...`
2. Enter package URL:
```
https://github.com/arcos33/CoreExtensions.git
```
3. Select your desired version rules
4. Click `Add Package`

## Usage

First, import the framework:

```swift
import CoreExtensions
```

### String Extensions

```swift
// Email validation
let email = "contact@example.com"
if email.isValidEmail {
    print("Valid email")
}

// String formatting
let text = "  Hello World  "
let trimmed = text.trimmed
print(trimmed) // "Hello World"

// URL encoding
let urlString = "Hello World!"
let encoded = urlString.urlEncoded // "Hello%20World!"

// First letter capitalization
let name = "john"
let capitalized = name.capitalizedFirst // "John"
```

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

## License

CoreExtensions is available under the MIT license. See the LICENSE file for more info.
