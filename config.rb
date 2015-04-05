# Require any additional compass plugins here.
# require "susy"
# require "breakpoint"
require 'autoprefixer-rails'


on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css, browsers: ['last 2 version', '> 1%'])
  end
end

# Set this to the root of your project when deployed:
sass_dir = "_scss"

# Publishing paths
http_path = "/"
http_images_path = "/img"
http_css_path = "/css"

# Local development paths
css_dir = "/css"
images_dir = "/img"
# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
output_style = :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass _scss scss && rm -rf sass && mv scss sass

