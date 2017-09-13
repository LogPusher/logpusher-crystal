# LogPusher: Log tracking for Crystal

[![Build Status](https://travis-ci.org/LogPusher/logpusher-crystal.svg?branch=master)](https://travis-ci.org/LogPusher/logpusher-crystal)

LogPusher is a system that allows you to receive notifications through your mobile on a single application. Apart from push notifications, you can also receive information without a mobile client via SMS and Mail service. You can integrate with any software through the API. Thanks to rapid API integration, you do not spend extra time for information and mail service. 

LogPusher is easy to use on the client side thanks to its simple interface. Just generate API key trough our control panel and you are ready to go.

## Getting started

1. [Create a LogPusher account](http://logpusher.com/)
2. Create a new App and get API Token

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  logpusher:
    github: LogPusher/logpusher-crystal
```

## Usage

```crystal
require "logpusher"

client = LogPusher::Client.new("hello@logpusher.com", "PASSWORD", "API_KEY")

response = client.push(
  "My awesome log message", 
  "myawesomesite.com", 
  "E-commerce", 
  "Notice", 
  Time.new.to_s("%H:%M"), 
  Time.new, 
  "1"
)

puts response
```

## Support

* [Search open and closed issues](https://github.com/LogPusher/logpusher-crystal/issues?utf8=✓&q=is%3Aissue) for similar problems
* [Report a bug or request a feature](https://github.com/LogPusher/logpusher-crystal/issues/new)

## Contributing

1. Fork it ( https://github.com/LogPusher/logpusher-crystal/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [izniburak](https://github.com/izniburak) İzni Burak Demirtaş - creator
