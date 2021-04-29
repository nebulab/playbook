class Playbook < Middleman::Extension
  DEFAULT_TITLE_TAG_CONTENT = 'The Nebulab Playbook'
  DEFAULT_DESCRIPTION = <<~META.gsub("\n", ' ').strip
    The Nebulab Playbook outlines the practices we follow in our day-to-day work on our company and
    client projects. Explore it to learn more or get inspiration!
  META
  HOST = 'https://playbook.nebulab.com'
  DEFAULT_IMAGE = 'default.png'

  def initialize(app, options_hash = {}, &block)
    super
  end

  helpers do
    def current_chapter
      Playbook::Chapter.new(current_resource)
    end

    def current_section
      current_chapter.section
    end

    def social_cover_path
      asset_path(:images, "social-covers/#{current_chapter.section&.social_cover || DEFAULT_IMAGE}")
    end

    def meta
      {
        title: [current_chapter&.title_tag_content.presence, DEFAULT_TITLE_TAG_CONTENT].compact.join(' | '),
        description: current_chapter&.meta_description_tag_content.presence || DEFAULT_DESCRIPTION,
        image: "#{HOST}#{social_cover_path}",
        url: "#{HOST}#{current_page.url}",
      }
    end
  end
end

::Middleman::Extensions.register(:playbook, Playbook)
