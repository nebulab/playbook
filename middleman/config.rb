# Settings
set :source, '..'
set :css_dir, 'middleman/assets/stylesheets'
set :js_dir, 'middleman/assets/javascripts'
set :images_dir, 'middleman/assets/images'
set :fonts_dir, 'middleman/assets/fonts'
set :layouts_dir, 'middleman/layouts'
set :data_dir, 'data'
set :helpers_dir, 'helpers'

## Playbook settings
set :playbook_topic_belongs_to_section_key, :title
set :playbook_section_has_many_topics_key, :'playbook-section-topics'

# Ignored paths
ignore '**/.keep'
ignore '.github/**'
ignore /^middleman(?!\/assets)(?!\/admin)(?!\/uploads).*/
ignore /^(?!.*\/.*)(?!index\.html).*/

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# Pretty urls
activate :directory_indexes

# Use Pry as the Middleman console
activate :pry

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'
page '/', layout: 'home'
page /.+\.html$/, layout: 'playbook/topic'
page '/middleman/admin/*', layout: false

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Middleman fails to reload helpers, although it notices their modification
# This force-reloads them. See
# https://github.com/middleman/middleman/issues/1105#issuecomment-305715209
Dir['helpers/*.rb'].each(&method(:load))

# Code that doesn't belong to helpers
# lib/**/*.rb is avoided in order to ensure namespaced files to be loaded before the namespace definition
Dir['lib/*.rb', 'lib/*/*.rb'].each(&method(:load))

activate :playbook

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript

  # Append a hash to asset urls (make sure to use the url helpers)
  activate :asset_hash

  # activate :asset_host, :host => '//YOURDOMAIN.cloudfront.net'
end
