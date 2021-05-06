# Code that doesn't belong to helpers
# lib/**/*.rb is avoided in order to ensure namespaced files to be loaded before the namespace definition
Dir['lib/*.rb', 'lib/*/*.rb'].each(&method(:load))
Dir['lib/helpers/*.rb'].each(&method(:load))

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :helpers_dir, 'lib/helpers'

page '/', layout: 'home'
page /.+\.html$/, layout: 'playbook/chapter'

# Ignored chapter indexes
ignore /^(?!.*\/.*)(?!index\.html).*/

activate :directory_indexes
activate :playbook
activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

## Playbook settings
set :playbook_chapter_belongs_to_section_key, :title
set :playbook_section_has_many_chapters_key, :'playbook-section-chapters'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash, ignore: %r{^assets/not-hashed/.*}
end

import_file File.expand_path('_redirects', root), '/_redirects'
