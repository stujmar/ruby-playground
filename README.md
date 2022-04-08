# ruby-playground
Just a fun place to play around with ruby.

## Rails install

```bash
mkdir rails_app
cd rails_app
vi Gemfile # Edit it to include a rails version you need

gem install bundler -v 2.0.0.pre.3 # Install bundler compatible with rails 5
bundle _2.0.0.pre.3_ install

bundle --path vendor # Wait for bundler to finish
bundle exec rails new ./
```