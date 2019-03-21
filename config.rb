# Unique header eneration
require './lib/unique_head.rb'

# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true,
    renderer: UniqueHeadCounter

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

set :http_prefix, ""
#if ENV['DOC_ENV'] === "local"
#  set :http_prefix, "/"
#else
#  set :http_prefix, "/api-reference/"
#end


# Activate the syntax highlighter
activate :syntax
ready do
  require './lib/multilang.rb'
end

activate :sprockets

activate :autoprefixer do |config|
  config.browsers = ['last 2 version', 'Firefox ESR']
  config.cascade  = false
  config.inline   = true
end

# Github pages require relative links
# activate :relative_assets
# set :relative_links, false

# Build Configuration
configure :build do
  # If you're having trouble with Middleman hanging, commenting
  # out the following two lines has been known to help
  activate :minify_css
  activate :minify_javascript
  # activate :relative_assets
  # activate :asset_hash
  # activate :gzip
end

# Deploy Configuration
# If you want Middleman to listen on a different port, you can set that below
set :port, 4567

helpers do
  require './lib/toc_data.rb'
end

# Global Variables
set :endpoint, 'https://api.uiza.co'
config[:endpoint]
set :token, 'uap-b2a3e6307dcf421a8a455825c01de914-a03248e7'
config[:token]
set :sample_video, 'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4'
config[:sample_video]
set :sample_poster, 'https://sample-videos.com/img/Sample-jpg-image-200kb.jpg'
config[:sample_poster]
set :sample_thumbnail, 'https://sample-videos.com/img/Sample-jpg-image-200kb.jpg'
config[:sample_thumbnail]
set :uiza_entity_id, '16ab25d3-fd0f-4568-8aa0-0339bbfd674f'
config[:uiza_entity_id]