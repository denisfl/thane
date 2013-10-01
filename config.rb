###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

set :slim, { pretty: true }

# activate :directory_indexes

# Build-specific configuration
configure :build do
  # Automatically add vendor prefixes to CSS rules
  # install gem 'middleman-autoprefixer'
  # activate :autoprefixer

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Compress and optimise images
  activate :image_optim

  # Compress PNGs after build
  # First: gem install middleman-smusher
  #require "middleman-smusher"
  #activate :smusher

  # activate :gzip

  # For non-minify html. Remove if don't use slim
  set :slim, { pretty: true }


  # Or use a different image path
  # set :http_path, "/Content/images/"
end

activate :deploy do |deploy|
  # https://github.com/tvaughan/middleman-deploy
  # deploy.build_before = true # default: false

  # Git
  # deploy.method = :git
  # Optional Settings
  # deploy.remote = "custom-remote" # remote name or git url, default: origin
  # deploy.branch = "custom-branch" # default: gh-pages

  # FTP
  # deploy.method   = :ftp
  # deploy.host     = "ftp.example.com"
  # deploy.path     = "/srv/www/site"
  # deploy.user     = "tvaughan"
  # deploy.password = "secret"

  # SFTP 
  # deploy.method   = :sftp
  # deploy.host     = "sftp.example.com"
  # deploy.path     = "/srv/www/site"
  # Optional Settings
  # deploy.user     = "tvaughan" # no default
  # deploy.password = "secret" # no default

  # rsync
  # deploy.method = :rsync
  # deploy.host   = "www.example.com"
  # deploy.path   = "/srv/www/site"
  # Optional Settings
  # deploy.user  = "tvaughan" # no default
  # deploy.port  = 5309 # ssh port, default: 22
  # deploy.clean = true # remove orphaned files on remote host, default: false

end