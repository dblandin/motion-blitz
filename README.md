# motion-blitz [![Gem Version](https://badge.fury.io/rb/motion-blitz.png)](http://badge.fury.io/rb/motion-blitz) [![Code Climate](https://codeclimate.com/github/dblandin/motion-blitz.png)](https://codeclimate.com/github/dblandin/motion-blitz) [![Analytics](https://d2weczhvl823v0.cloudfront.net/dblandin/motion-blitz/trend.png)](#motion-blitz---)

### blitz (fl•ash), verb

1. Shine in a bright but brief, sudden, or intermittent way
2. Control the display of temporary messages via SVProgressHUD

__motion-blitz__'s initial development was sponsored by [dscout](https://dscout.com). Many thanks to them!

[![Success](https://github.com/dblandin/motion-blitz/blob/master/img/success.png?raw=true)](#blitz-flash-verb)

## Usage

``` ruby
Notifier = Motion::Blitz

Notifier.show
Notifier.show('Hold on!')
Notifier.show(:black)
Notifier.show('Hold on!', :gradient)

Notifier.loading # 'Loading...'

Notifier.progress(0.5)
Notifier.progress(0.8, 'Almost Done!')
Notifier.progress(0.8, :clear)
Notifier.progress(0.8, 'Almost Done!', :black)

Notifier.dismiss

Notifier.success
Notifier.success('All right!')

Notifier.error
Notifier.error('Whoops!')
```

### Masks

``` ruby
:none     # allow user interactions, don't dim background UI (default)
:clear    # disable user interactions, don't dim background UI
:black    # disable user interactions, dim background UI with 50% translucent black
:gradient # disable user interactions, dim background UI with translucent radial gradient (a-la-alertView)
```

## Setup

If you're using Bundler, add this line to your app's Gemfile:

```ruby
gem 'motion-blitz'
```

and then run:

```
$ bundle install
```

Or install it yourself with:

```
$ gem install motion-blitz
```

and require motion-blitz in your Rakefile:

```ruby
require 'rubygems'
require 'motion-blitz'
```

## Dependencies

motion-blitz depends on the SVProgressHUD CocoaPod.

You don't have to add SVProgressHUD to your Rakefile (motion-blitz handles that
dependency for you) but you need to run `$ rake pod:install` to download and
install it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

* [Sam Vermette](https://github.com/samvermette) for [SVProgressHUD](https://github.com/samvermette/SVProgressHUD)
* [Parker Selbert](https://github.com/sorentwo) for the [Norweigan-inspired name](https://github.com/dblandin/motion-blitz/blob/master/lib/project/motion-blitz.rb#L2)
* [dscout](https://dscout.com) - for their sponsorship
