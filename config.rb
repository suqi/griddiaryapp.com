require 'slim'

page "/support/*", layout: "support"
page "/sitemap.xml", layout: false

activate :autoprefixer, browsers: ['last 2 versions', 'ie 8', 'ie 9']

activate :livereload

activate :i18n, :path => "/:locale/", :mount_at_root => :en

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

# Build-specific configuration
configure :build do
  # activate :imageoptim do |options|
  #   # print out skipped images
  #   options.verbose = true
  #
  #   # Setting these to true or nil will let options determine them (recommended)
  #   options.nice = true
  #   options.threads = true
  #
  #   # Image extensions to attempt to compress
  #   options.image_extensions = %w(.png)
  #
  #   # compressor worker options, individual optimisers can be disabled by passing
  #   # false instead of a hash
  #   options.pngcrush_options  = {:chunks => ['alla'], :fix => false, :brute => false}
  #   options.pngout_options = false
  #   options.optipng_options   = {:level => 6, :interlace => false}
  #   options.advpng_options    = {:level => 4}
  # end

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

activate :deploy do |deploy|
  deploy.build_before = true

  deploy.method = :git
end

