# Postman::Client

The gem provide sending emails/smses via our postman service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'postman-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install postman-client

## Usage

Postman::Client::Dispatcher.new(:host => 'http://host').send_mail(:subject => 'subject', :body => 'body', :emails => ['text@example.com'], :slug => 'system_name')
Postman::Client::Dispatcher.new(:host => 'http://host').send_sms(:body => 'body', :phones => ['1234567890'], :slug => 'system_name')

## Contributing

1. Fork it ( https://github.com/[my-github-username]/postman-client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
