# Change Case

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

> Transform a string between `camelCase`, `PascalCase`, `Capital Case`, `snake_case`, `param-case`, `CONSTANT_CASE` and others.

### Core

These functions come with [`package:change_case`]

- [Change Case](#change-case)
    - [Core](#core)
      - [toCamelCase](#tocamelcase)
      - [toCapitalCase](#tocapitalcase)
      - [toConstantCase](#toconstantcase)
      - [toDotCase](#todotcase)
      - [toHeaderCase](#toheadercase)
      - [toNoCase](#tonocase)
      - [toParamCase](#toparamcase)
      - [toPascalCase](#topascalcase)
      - [toPathCase](#topathcase)
      - [toSentenceCase](#tosentencecase)
      - [toSnakeCase](#tosnakecase)
    - [Other Case Utilities](#other-case-utilities)
      - [toTitleCase](#totitlecase)
      - [toSwapCase](#toswapcase)
      - [isLowerCase](#islowercase)
      - [isUpperCase](#isuppercase)
      - [toLowerCaseFirst](#tolowercasefirst)
      - [toUpperCaseFirst](#touppercasefirst)
      - [toSpongeCase](#tospongecase)
  - [Configuration](#configuration)
    - [Patterns](#patterns)
    - [Placeholder](#placeholder)
  - [Related](#related)

#### [toCamelCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/camel)

> Transform into a string with the separator denoted by the next word capitalized.

```dart
'test string'.toCamelCase(); // 'testString'
```

#### [toCapitalCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/capital)

> Transform into a space separated string with each word capitalized.

```dart
'test string'.toCapitalCase(); // 'Test String'
```

#### [toConstantCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/constant)

> Transform into upper case string with an underscore between words.

```dart
'test string'.toConstantCase(); // 'TEST_STRING'
```

#### [toDotCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/dot)

> Transform into a lower case string with a period between words.

```dart
'test string'.toDotCase(); // 'test.string'
```

#### [toHeaderCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/header)

> Transform into a dash separated string of capitalized words.

```dart
'test string'.toHeaderCase(); // 'Test-String'
```

#### [toNoCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/no)

> Transform into a lower cased string with spaces between words.

```dart
'testString'.toNoCase(); // 'test string'
```

#### [toParamCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/param)

> Transform into a lower cased string with dashes between words.

```dart
'test string'.toParamCase(); // 'test-string'
```

#### [toPascalCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/pascal)

> Transform into a string of capitalized words without separators.

```dart
'test string'.toPascalCase(); // 'TestString'
```

#### [toPathCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/path)

> Transform into a lower case string with slashes between words.

```dart
'test string'.toPathCase(); // 'test/string'

// provide a separator override default '/'
'test string'.toPathCase(r'\'); // 'test\string'

```

#### [toSentenceCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/sentence)

> Transform into a lower case with spaces between words, then capitalize the string.

```dart
'testString'.toSentenceCase(); // 'Test string'
```

#### [toSnakeCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/snake)

> Transform into a lower case string with underscores between words.

```dart
'test string'.toSnakeCase(); // 'test_string'
```

### Other Case Utilities

#### [toTitleCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/title)

> Transform a string into title case following English rules.

```dart
'a simple test'.toTitleCase(); // 'A Simple Test'
```

#### [toSwapCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/swap)

> Transform a string by swapping every character from upper to lower case, or lower to upper case.

```dart
'Test String'.toSwapCase(); // 'tEST sTRING'
```

#### [isLowerCase](https://github.com/mrgnhnt96/change_case/blob/main/lib/src/change_case.dart)

> Returns `true` if the string is lower case only.

```dart
'test string'.isLowerCase(); // true
```

#### [isUpperCase](https://github.com/mrgnhnt96/change_case/blob/main/lib/src/change_case.dart)

> Returns `true` if the string is upper case only.

```dart
'test string'.isUpperCase(); // false
```

#### [toLowerCaseFirst](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/lower_first)

> Transforms the string with the first character in lower cased.

```dart
'TEST'.toLowerCaseFirst(); // 'tEST'
```

#### [toUpperCaseFirst](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/upper_first)

> Transforms the string with the first character in upper cased.

```dart
'test'.toUpperCaseFirst(); // 'Test'
```

#### [toSpongeCase](https://github.com/mrgnhnt96/change_case/tree/main/lib/src/cases/sponge)

> Transform into a string with random capitalization applied.

```dart
'Test String'.toSpongeCase(); // 'tEst stRINg'
```

## Configuration

> [`package:change_case`] has a configuration file, [`ChangeCaseConfig`], that you can use to update `splitPatterns`, `stripPatterns`, and the `placeholder` which will be applied to most
function listed above.

__I don't suggest changing these unless you know what you are doing 😁__

### Patterns

Change case uses `RegExp` to split & replace characters of the string.
While they are great at what they do, you may want to update or add new patterns.

These patterns can be updated by using the [`ChangeCaseConfig`]`.setUp(splitPatterns: [...], stripPatterns: [...])`

The default patterns are:

> _Note_: `(?:•)*` is used to match any "`•`" ([`placeholder`](#placeholder)) character.

- Split
  - `ChangeCaseConfig.lowerOrNumToUpperPattern`

    ```dart
    // matches lowercase or numeric char to uppercase char
    RegExp('([a-z0-9])(?:•)*([A-Z])')
    ```

  - `ChangeCaseConfig.lowerOrNumToUpperPattern`

    ```dart
    // matches uppercase char to uppercase followed by lowercase char
    RegExp('([A-Z])(?:•)*([A-Z][a-z])')
    ```

- Strip
  - `ChangeCaseConfig.upperToLowerPattern`

    ```dart
    // matches any non-alphanumeric char
    RegExp('[^A-Z0-9]+', caseSensitive: false)
    ```

  - `ChangeCaseConfig.lowerToNumOrUpperPattern` (Not included in default, but can be used to add or replace)

    ```dart
    // matches lowercase char to numeric or uppercase char
    // changes the behavior to `word2019 -> word 2019` and `minifyURLs -> minify urls`
    RegExp('([a-z])([A-Z0-9])')
    ```

---

### Placeholder

> can be configured with [`ChangeCaseConfig`]`.setUp(placeholder: ...)`

The `placeholder` is a string that is added and used as a reference to configure each case.

The default placeholder is "`•`"

For example:

```dart
final string = 'test stringCase';
print(string.toCamelCase()); // expected: 'testStringCase'

// runs splitPatterns, returns "test string•Case"
// runs stripPatterns, returns "test•string•Case"
// runs camel case logic, returns "testStringCase"
```

This string needs to be a unique character that is not used in the string.

## Related

- [Meteor](https://github.com/Konecty/change-case)
- [Atom](https://github.com/robhurring/atom-change-case)
- [VSCode](https://github.com/wmaurer/vscode-change-case)
- [change-case](https://github.com/blakeembrey/change-case)


[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[`package:change_case`]: https://github.com/mrgnhnt96/change_case
[`ChangeCaseConfig`]: https://github.com/mrgnhnt96/change_case/blob/main/lib/src/change_case_config.dart
