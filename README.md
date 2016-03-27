# map_chain [![Build Status](https://travis-ci.org/koic/map_chain.svg)](https://travis-ci.org/koic/map_chain) [![Gem Version](https://badge.fury.io/rb/map_chain.svg)](http://badge.fury.io/rb/map_chain)

```ruby
%i(foo bar).map_chain('to_s.to_sym') #=> %i(foo bar).map(&:to_s).map(&:to_sym)
```

## CAUTION

If you use with ORM, ODM and so on, please be careful to N+1 query problem.

## INSTALL

Add these lines to your application's Gemfile:

```
gem 'map_chain'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install map_chain
```

And require it as:

```
require 'map_chain'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

map_chain is released under the [MIT License](http://www.opensource.org/licenses/MIT).
