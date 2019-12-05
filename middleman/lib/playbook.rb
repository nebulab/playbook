class Playbook < Middleman::Extension
  DEFAULT_TITLE_TAG_CONTENT = 'The Nebulab playbook'
  DEFAULT_DESCRIPTION = "All of Nebulab's practices and processes are documented in our Playbook. Feel free to browse around!"
  HOST = 'https://playbook.nebulab.it'

  def initialize(app, options_hash = {}, &block)
    super
  end

  helpers do
    def current_chapter
      Playbook::Chapter.new(current_resource)
    end

    def current_section
      current_chapter.try :section
    end

    def meta
      {
        title: [current_chapter&.title_tag_content.presence, DEFAULT_TITLE_TAG_CONTENT].compact.join(' | '),
        description: current_chapter&.meta_description_tag_content.presence || DEFAULT_DESCRIPTION,
        image: "#{HOST}#{asset_path(:images, 'social-cover.png')}",
        url: "#{HOST}#{current_page.url}",
      }
    end
  end
end

::Middleman::Extensions.register(:playbook, Playbook)
