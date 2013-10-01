# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

gem "middleman", "~>3.1.3"
gem "slim"

gem 'therubyracer' # faster JS compiles

# Compress and optimise images
# https://github.com/plasticine/middleman-imageoptim
gem "middleman-imageoptim", "~> 0.0.4"
# Compress PNGs after build
# gem install middleman-smusher

# Live-reloading plugin
gem "middleman-livereload", "~> 3.1.0"

gem "middleman-deploy"

# Automatically add vendor prefixes to CSS rules in the stylesheets served in your Middleman project using values from Can I Use.
# https://github.com/porada/middleman-autoprefixer
# gem 'middleman-autoprefixer'

# For faster file watcher updates:
# gem "wdm", "~> 0.1.0") # Windows

# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location"
end